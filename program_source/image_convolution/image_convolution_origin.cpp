// Converted from image_convolution_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: image_convolution.cpp ----
#include <iostream>

#define IMG_SIZE 1024
#define KERNEL_SIZE 3

void image_convolution(int img[IMG_SIZE][IMG_SIZE], int kernel[KERNEL_SIZE][KERNEL_SIZE], int result[IMG_SIZE][IMG_SIZE]) {

    int i, j, m, n;
    int sum;

    for (i = 0; i < IMG_SIZE; i++) {

        for (j = 0; j < IMG_SIZE; j++) {

            sum = 0;
            for (m = 0; m < KERNEL_SIZE; m++) {

                for (n = 0; n < KERNEL_SIZE; n++) {

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
