#include "max_pool.h"

static inline int ceil_div(int x, int y) {
    return (x + y - 1) / y;
}


void maxpool_kernel(
    data_t localInput[BLOCK_C][MAX_LOCAL_IN_H][MAX_LOCAL_IN_W],
    data_t localOutput[BLOCK_C][BLOCK_H][BLOCK_W],
    int tile_C, int tile_H, int tile_W
)
{
    #pragma HLS inline off
    for (int c = 0; c < tile_C; c++) {
        for (int i = 0; i < tile_H; i++) {
            for (int j = 0; j < tile_W; j++) {
                // Compute pooling over the window.
                data_t max_val = localInput[c][i * STRIDE_H][j * STRIDE_W];
                for (int kh = 0; kh < K_H; kh++) {
                    for (int kw = 0; kw < K_W; kw++) {
                        int r = i * STRIDE_H + kh;
                        int col = j * STRIDE_W + kw;
                        if (localInput[c][r][col] > max_val) {
                            max_val = localInput[c][r][col];
                        }
                    }
                }
                localOutput[c][i][j] = max_val;
            }
        }
    }
}

void max_pool(
    int C, int H_IN, int W_IN,
    data_t input[MAX_C][MAX_H_IN][MAX_W_IN],
    int H_OUT, int W_OUT,
    data_t output[MAX_C][MAX_H_IN][MAX_W_IN]   // Output region [C][H_OUT][W_OUT]
)
{
    #pragma HLS inline off
    // Divide channels and spatial dimensions (of the output) into tiles.
    int channel_tiles = ceil_div(C, BLOCK_C);
    int tile_rows = ceil_div(H_OUT, BLOCK_H);
    int tile_cols = ceil_div(W_OUT, BLOCK_W);

    // Loop over channel tiles.
    for (int ct = 0; ct < channel_tiles; ct++) {
        int c_offset = ct * BLOCK_C;
        int tile_C = std::min(BLOCK_C, C - c_offset);

        // Loop over spatial tiles.
        for (int tr = 0; tr < tile_rows; tr++) {
            int out_row_offset = tr * BLOCK_H;
            int tile_H = std::min(BLOCK_H, H_OUT - out_row_offset);
            // Compute corresponding input tile height.
            int localInH = (tile_H - 1) * STRIDE_H + K_H;

            for (int tc = 0; tc < tile_cols; tc++) {
                int out_col_offset = tc * BLOCK_W;
                int tile_W = std::min(BLOCK_W, W_OUT - out_col_offset);
                // Compute corresponding input tile width.
                int localInW = (tile_W - 1) * STRIDE_W + K_W;

                // Local buffers.
                data_t localInput[BLOCK_C][MAX_LOCAL_IN_H][MAX_LOCAL_IN_W];
                data_t localOutput[BLOCK_C][BLOCK_H][BLOCK_W];

                // Copy the relevant region from global input to localInput.
                // For each channel in this tile.
                for (int c = 0; c < tile_C; c++) {
                    for (int r = 0; r < localInH; r++) {
                        for (int col = 0; col < localInW; col++) {
                            // Global input row = (out_row_offset * STRIDE_H) + r
                            // Global input col = (out_col_offset * STRIDE_W) + col
                            localInput[c][r][col] = input[c_offset + c][(out_row_offset * STRIDE_H) + r][(out_col_offset * STRIDE_W) + col];
                        }
                    }
                }

                // Call the maxpool kernel for this tile.
                maxpool_kernel(localInput, localOutput, tile_C, tile_H, tile_W);

                // Write the computed tile back to global output.
                for (int c = 0; c < tile_C; c++) {
                    for (int i = 0; i < tile_H; i++) {
                        for (int j = 0; j < tile_W; j++) {
                            output[c_offset + c][out_row_offset + i][out_col_offset + j] = localOutput[c][i][j];
                        }
                    }
                }
            }
        }
    }
}