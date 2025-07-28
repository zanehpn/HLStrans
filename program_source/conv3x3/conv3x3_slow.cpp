
#include <iostream>
#include <cstdlib>
#include <cmath>
#include <ctime>
#include <algorithm>

// Maximum spatial dimension (enough for up to 14x14 = 196 elements)
#define MAX_SPATIAL 1024
// Maximum channels supported
#define MAX_CH 256
#define MAX_LOCAL_SIZE 23

static const int BLOCK_IN_CH  = 64;
static const int BLOCK_OUT_CH = 64;
static const int BLOCK_OUT_H  = 7;  // maximum tile height (output)
static const int BLOCK_OUT_W  = 7;  // maximum tile width (output)
static const int KSIZE        = 3;

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
    // Initialize output with bias.
    for (int oc = 0; oc < out_ch; oc++) {
        for (int oh = 0; oh < out_h; oh++) {
            for (int ow = 0; ow < out_w; ow++) {
                output[oc][oh * out_w + ow] = bias[oc];
            }
        }
    }
    // Convolution accumulate.
    for (int oc = 0; oc < out_ch; oc++) {
        for (int ic = 0; ic < in_ch; ic++) {
            for (int oh = 0; oh < out_h; oh++) {
                for (int ow = 0; ow < out_w; ow++) {
                    float sum_val = 0.0f;
                    int in_r0 = oh * stride - pad;
                    int in_c0 = ow * stride - pad;
                    for (int kh = 0; kh < KSIZE; kh++) {
                        for (int kw = 0; kw < KSIZE; kw++) {
                            int in_r = in_r0 + kh;
                            int in_c = in_c0 + kw;
                            if (in_r >= 0 && in_r < H && in_c >= 0 && in_c < W) {
                                sum_val += input[ic][in_r * W + in_c] *
                                           weight[oc][ic][kh][kw];
                            }
                        }
                    }
                    output[oc][oh * out_w + ow] += sum_val;
                }
            }
        }
    }
}