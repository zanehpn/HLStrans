#include <math.h>
#include <ap_fixed.h>

#define C 64
#define H 28
#define W 28

typedef ap_fixed<16, 5> data_t;

/**
 * Applies element-wise sigmoid:
 *   output[c][h][w] = 1.0f / (1.0f + expf(-input[c][h][w]));
 */
void sigmoid(data_t input[C][H][W],
               data_t       output[C][H][W])
{
    for (int c = 0; c < C; ++c) {
        for (int h = 0; h < H; ++h) {
            for (int w = 0; w < W; ++w) {
                data_t x = input[c][h][w];
                output[c][h][w] = 1.0f / (1.0f + expf(-x));
            }
        }
    }
}
