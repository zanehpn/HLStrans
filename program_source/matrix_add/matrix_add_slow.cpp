#include <stdio.h>
#include <ap_fixed.h>

#define MAX_C 64
#define MAX_H 224
#define MAX_W 224
typedef ap_fixed<16, 5> data_t;

void matrix_add(
    int C, int H, int W,
    float in1[MAX_C][MAX_H][MAX_W],
    float in2[MAX_C][MAX_H][MAX_W],
    float out[MAX_C][MAX_H][MAX_W]
) {
    // Traverse each channel, row, and column
    for (int c = 0; c < C; c++) {
        for (int h = 0; h < H; h++) {
            for (int w = 0; w < W; w++) {
                out[c][h][w] = in1[c][h][w] + in2[c][h][w];
            }
        }
    }
}
