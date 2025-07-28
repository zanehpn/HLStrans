#include <math.h>
#include <ap_fixed.h>

#define C 64
#define H 28
#define W 28

void tanh(float input[C][H][W], float output[C][H][W]) {
    for (int c = 0; c < C; ++c) {
        for (int h = 0; h < H; ++h) {
            for (int w = 0; w < W; ++w) {
                output[c][h][w] = std::tanhf(input[c][h][w]);  
            }
        }
    }
}
