#include <iostream>
#include <cstdlib>
#include <cmath>
#include <ctime>
#include <algorithm>

// Maximum spatial dimension (enough for up to 14x14 = 196 elements)
#define MAX_SPATIAL 1024
// Maximum channels supported
#define MAX_CH 256

// -----------------------------------------------------------------------------
// Helper functions
// -----------------------------------------------------------------------------
// out_dim computes the output size for one spatial dimension.
static int out_dim(int size, int pad, int stride, int kernel = 5) {
    return (size + 2 * pad - kernel) / stride + 1;
}
static int ceil_div(int x, int y) {
    return (x + y - 1) / y;
}

#define MAX_LOCAL_SIZE 23

static const int BLOCK_IN_CH  = 64;
static const int BLOCK_OUT_CH = 64;
static const int BLOCK_OUT_H  = 7;  // maximum tile height (output)
static const int BLOCK_OUT_W  = 7;  // maximum tile width (output)
static const int KSIZE        = 3;

void conv_kernel(
    float inData[BLOCK_IN_CH][MAX_LOCAL_SIZE][MAX_LOCAL_SIZE],
    float weight[BLOCK_OUT_CH][BLOCK_IN_CH][KSIZE][KSIZE],
    float outData[BLOCK_OUT_CH][BLOCK_OUT_H][BLOCK_OUT_W],
    int outTileH, int outTileW,
    int localInH, int localInW,
    int stride
)
{
    // Loop only over the valid output tile region.
    for (int ic = 0; ic < BLOCK_IN_CH; ic++) {
        for (int oc = 0; oc < BLOCK_OUT_CH; oc++) {
            for (int oh = 0; oh < outTileH; oh++) {
                for (int ow = 0; ow < outTileW; ow++) {
                    float sum_val = 0.0f;
                    for (int kh = 0; kh < KSIZE; kh++) {
                        for (int kw = 0; kw < KSIZE; kw++) {
                            int in_r = oh * stride + kh;
                            int in_c = ow * stride + kw;
                            sum_val += inData[ic][in_r][in_c] * weight[oc][ic][kh][kw];
                        }
                    }
                    outData[oc][oh][ow] += sum_val;
                }
            }
        }
    }
}

void conv3x3(
    int in_ch,
    int out_ch,
    int H,
    int W,
    float input[MAX_CH][MAX_SPATIAL],
    float weight[MAX_CH][MAX_CH][KSIZE][KSIZE],
    float bias[MAX_CH],
    float output[MAX_CH][MAX_SPATIAL],
    int stride,
    int pad
)
{
    int out_h = out_dim(H, pad, stride, KSIZE);
    int out_w = out_dim(W, pad, stride, KSIZE);

    // (A) Initialize the full output with bias.
    for (int oc = 0; oc < out_ch; oc++) {
        for (int oh = 0; oh < out_h; oh++) {
            for (int ow = 0; ow < out_w; ow++) {
                output[oc][oh * out_w + ow] = bias[oc];
            }
        }
    }

    // Tiling parameters.
    int tile_rows = ceil_div(out_h, BLOCK_OUT_H);
    int tile_cols = ceil_div(out_w, BLOCK_OUT_W);
    int out_ch_tiles = ceil_div(out_ch, BLOCK_OUT_CH);
    int in_ch_tiles  = ceil_div(in_ch, BLOCK_IN_CH);

    // (B) Loop over spatial tiles.
    for (int tr = 0; tr < tile_rows; tr++) {
        for (int tc = 0; tc < tile_cols; tc++) {
            int out_row0 = tr * BLOCK_OUT_H;
            int out_col0 = tc * BLOCK_OUT_W;
            int tileH = std::min(BLOCK_OUT_H, out_h - out_row0);
            int tileW = std::min(BLOCK_OUT_W, out_w - out_col0);

            // Compute local input patch size for this tile.
            int localInH = (tileH - 1) * stride + KSIZE;
            int localInW = (tileW - 1) * stride + KSIZE;

            // (C) Loop over output-channel tiles.
            for (int oct = 0; oct < out_ch_tiles; oct++) {
                int oc_offset = oct * BLOCK_OUT_CH;
                int cur_out_ch = (oc_offset + BLOCK_OUT_CH <= out_ch) ? BLOCK_OUT_CH : (out_ch - oc_offset);

                // Copy current partial sums for this spatial tile from global output
                // into a local buffer.
                float localOut[BLOCK_OUT_CH][BLOCK_OUT_H][BLOCK_OUT_W] = {0};
                for (int oc2 = 0; oc2 < cur_out_ch; oc2++) {
                    for (int i = 0; i < tileH * tileW; i++) {
                        int r_local = i / tileW;
                        int c_local = i % tileW;
                        localOut[oc2][r_local][c_local] =
                            output[oc_offset + oc2][(out_row0 + r_local) * out_w + (out_col0 + c_local)];
                    }
                }

                // (D) Loop over input-channel tiles.
                for (int ict = 0; ict < in_ch_tiles; ict++) {
                    int ic_offset = ict * BLOCK_IN_CH;
                    int cur_in_ch = (ic_offset + BLOCK_IN_CH <= in_ch) ? BLOCK_IN_CH : (in_ch - ic_offset);

                    // Build localW for the current slice.
                    float localW[BLOCK_OUT_CH][BLOCK_IN_CH][KSIZE][KSIZE] = {{{{0}}}};
                    for (int oc2 = 0; oc2 < cur_out_ch; oc2++) {
                        for (int ic2 = 0; ic2 < cur_in_ch; ic2++) {
                            for (int kr = 0; kr < KSIZE; kr++) {
                                for (int kc = 0; kc < KSIZE; kc++) {
                                    localW[oc2][ic2][kr][kc] =
                                        weight[oc_offset + oc2][ic_offset + ic2][kr][kc];
                                }
                            }
                        }
                    }

                    // Build localIn for the current input-channel tile.
                    float localIn[BLOCK_IN_CH][MAX_LOCAL_SIZE][MAX_LOCAL_SIZE] = {{{0}}};
                    for (int ic2 = 0; ic2 < cur_in_ch; ic2++) {
                        for (int rr = 0; rr < localInH; rr++) {
                            for (int cc = 0; cc < localInW; cc++) {
                                int global_r = out_row0 * stride - pad + rr;
                                int global_c = out_col0 * stride - pad + cc;
                                if (global_r >= 0 && global_r < H && global_c >= 0 && global_c < W) {
                                    localIn[ic2][rr][cc] =
                                        input[ic_offset + ic2][global_r * W + global_c];
                                }
                            }
                        }
                    }

                    // (E) Call conv_kernel for this tile.
                    conv_kernel(localIn, localW, localOut, tileH, tileW, localInH, localInW, stride);
                } // end input-channel tile loop

                // (F) Write the updated localOut back to global output.
                for (int oc2 = 0; oc2 < cur_out_ch; oc2++) {
                    for (int r = 0; r < tileH; r++) {
                        for (int c = 0; c < tileW; c++) {
                            output[oc_offset + oc2][(out_row0 + r) * out_w + (out_col0 + c)] =
                                localOut[oc2][r][c];
                        }
                    }
                }
            } // end output-channel tile loop
        } // end spatial tile loop (tc)
    } // end spatial tile loop (tr)
}
