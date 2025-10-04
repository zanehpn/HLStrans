// ---- file: image_convolution.cpp ----
#include <iostream>

#define IMG_SIZE 1024
#define KERNEL_SIZE 3

void image_convolution(int img[IMG_SIZE][IMG_SIZE], int kernel[KERNEL_SIZE][KERNEL_SIZE], int result[IMG_SIZE][IMG_SIZE]) {
#pragma HLS ARRAY_PARTITION variable=result type=cyclic dim=2 factor=8
#pragma HLS ARRAY_PARTITION variable=result type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=kernel type=cyclic dim=2 factor=8
#pragma HLS ARRAY_PARTITION variable=kernel type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=img type=cyclic dim=2 factor=4
#pragma HLS ARRAY_PARTITION variable=img type=cyclic dim=1 factor=8
    int i, j, m, n;
    int sum;

    for (i = 0; i < IMG_SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        for (j = 0; j < IMG_SIZE; j++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
            sum = 0;
            for (m = 0; m < KERNEL_SIZE; m++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2
                for (n = 0; n < KERNEL_SIZE; n++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
                    int x = i + m - KERNEL_SIZE / 2;
                    int y = j + n - KERNEL_SIZE / 2;
                    if (x >= 0 && x < IMG_SIZE && y >= 0 && y < IMG_SIZE) {
                        sum += img[x][y] * kernel[m][n];
                    }
                }
            }
            result[i][j] = sum;
        }
    }
}

// Top function name: image_convolution
