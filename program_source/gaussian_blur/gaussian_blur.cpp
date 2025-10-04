// Converted from gaussian_blur.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: gaussian_blur.cpp ----
#include <cmath>

#define WIDTH 1024
#define HEIGHT 1024

void gaussian_blur(const float input[HEIGHT][WIDTH], float output[HEIGHT][WIDTH]) {
#pragma HLS ARRAY_PARTITION variable=output type=cyclic dim=2 factor=2
#pragma HLS ARRAY_PARTITION variable=output type=cyclic dim=1 factor=16
#pragma HLS ARRAY_PARTITION variable=input type=cyclic dim=2 factor=1
#pragma HLS ARRAY_PARTITION variable=input type=cyclic dim=1 factor=2
    const float kernel[5][5] = {
        {1, 4, 7, 4, 1},
        {4, 16, 26, 16, 4},
        {7, 26, 41, 26, 7},
        {4, 16, 26, 16, 4},
        {1, 4, 7, 4, 1}
    };
    const float kernel_sum = 273.0;

    for (int y = 2; y < HEIGHT - 2; y++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        for (int x = 2; x < WIDTH - 2; x++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
            float sum = 0.0;
            for (int ky = 0; ky < 5; ky++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
                for (int kx = 0; kx < 5; kx++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2
                    sum += input[y + ky - 2][x + kx - 2] * kernel[ky][kx];
                }
            }
            output[y][x] = sum / kernel_sum;
        }
    }
}

// Top function name: gaussian_blur
