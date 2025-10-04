#include <iostream>

#define IMG_SIZE 1024
#define KERNEL_SIZE 3

void image_convolution(int img[IMG_SIZE][IMG_SIZE], int kernel[KERNEL_SIZE][KERNEL_SIZE], int result[IMG_SIZE][IMG_SIZE]) {

    // Dynamically allocate copies of the input arrays and result
    int** img_dyn = new int*[IMG_SIZE];
    int** result_dyn = new int*[IMG_SIZE];
    for (int i = 0; i < IMG_SIZE; ++i) {
        img_dyn[i] = new int[IMG_SIZE];
        result_dyn[i] = new int[IMG_SIZE];
    }

    int** kernel_dyn = new int*[KERNEL_SIZE];
    for (int m = 0; m < KERNEL_SIZE; ++m) {
        kernel_dyn[m] = new int[KERNEL_SIZE];
    }

    // Copy data from input arrays to dynamic arrays
    for (int i = 0; i < IMG_SIZE; ++i) {
        for (int j = 0; j < IMG_SIZE; ++j) {
            img_dyn[i][j] = img[i][j];
        }
    }
    for (int m = 0; m < KERNEL_SIZE; ++m) {
        for (int n = 0; n < KERNEL_SIZE; ++n) {
            kernel_dyn[m][n] = kernel[m][n];
        }
    }

    // Perform convolution using dynamic arrays
    for (int i = 0; i < IMG_SIZE; i++) {
        for (int j = 0; j < IMG_SIZE; j++) {
            int sum = 0;
            for (int m = 0; m < KERNEL_SIZE; m++) {
                for (int n = 0; n < KERNEL_SIZE; n++) {
                    int x = i + m - KERNEL_SIZE / 2;
                    int y = j + n - KERNEL_SIZE / 2;
                    if (x >= 0 && x < IMG_SIZE && y >= 0 && y < IMG_SIZE) {
                        sum += img_dyn[x][y] * kernel_dyn[m][n];
                    }
                }
            }
            result_dyn[i][j] = sum;
        }
    }

    // Copy results back to the output array
    for (int i = 0; i < IMG_SIZE; ++i) {
        for (int j = 0; j < IMG_SIZE; ++j) {
            result[i][j] = result_dyn[i][j];
        }
    }

    // Free dynamic memory
    for (int i = 0; i < IMG_SIZE; ++i) {
        delete[] img_dyn[i];
        delete[] result_dyn[i];
    }
    delete[] img_dyn;
    delete[] result_dyn;

    for (int m = 0; m < KERNEL_SIZE; ++m) {
        delete[] kernel_dyn[m];
    }
    delete[] kernel_dyn;
}
