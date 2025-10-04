// contents of image_convolution_tb.cpp
#include <iostream>
#include <cassert>

// Include the source to access the image_convolution function and constants
#include "image_convolution.cpp"

// Helper to fill the image with a constant value
void fill_image_constant(int (*img)[IMG_SIZE], int value) {
    for (int i = 0; i < IMG_SIZE; ++i) {
        for (int j = 0; j < IMG_SIZE; ++j) {
            img[i][j] = value;
        }
    }
}

// Helper to fill the image with a simple pattern: img[i][j] = i + j
void fill_image_pattern_sum(int (*img)[IMG_SIZE]) {
    for (int i = 0; i < IMG_SIZE; ++i) {
        for (int j = 0; j < IMG_SIZE; ++j) {
            img[i][j] = i + j;
        }
    }
}

// Helper to zero-initialize the kernel
void zero_kernel(int kernel[KERNEL_SIZE][KERNEL_SIZE]) {
    for (int m = 0; m < KERNEL_SIZE; ++m) {
        for (int n = 0; n < KERNEL_SIZE; ++n) {
            kernel[m][n] = 0;
        }
    }
}

// Identity kernel: only the center element is 1
void set_kernel_identity(int kernel[KERNEL_SIZE][KERNEL_SIZE]) {
    zero_kernel(kernel);
    kernel[KERNEL_SIZE / 2][KERNEL_SIZE / 2] = 1; // center = 1
}

// All-ones kernel: simple 3x3 sum
void set_kernel_ones(int kernel[KERNEL_SIZE][KERNEL_SIZE]) {
    for (int m = 0; m < KERNEL_SIZE; ++m) {
        for (int n = 0; n < KERNEL_SIZE; ++n) {
            kernel[m][n] = 1;
        }
    }
}

// 3x3 Laplacian kernel: center = 8, neighbors = -1
void set_kernel_laplacian(int kernel[KERNEL_SIZE][KERNEL_SIZE]) {
    for (int m = 0; m < KERNEL_SIZE; ++m) {
        for (int n = 0; n < KERNEL_SIZE; ++n) {
            kernel[m][n] = -1;
        }
    }
    kernel[KERNEL_SIZE / 2][KERNEL_SIZE / 2] = 8;
}

int main() {
    std::cout << "Running image_convolution tests..." << std::endl;

    // Allocate large 1024x1024 images on heap to avoid stack overflow
    int (*img)[IMG_SIZE] = new int[IMG_SIZE][IMG_SIZE];
    int (*result)[IMG_SIZE] = new int[IMG_SIZE][IMG_SIZE];
    int kernel[KERNEL_SIZE][KERNEL_SIZE];

    // Test 1: Identity kernel should reproduce the input image
    {
        set_kernel_identity(kernel);
        fill_image_pattern_sum(img);

        image_convolution(img, kernel, result);

        // Verify a few sample points across the image
        assert(result[0][0] == img[0][0]);                       // Top-left corner
        assert(result[1023][1023] == img[1023][1023]);           // Bottom-right corner
        assert(result[512][512] == img[512][512]);               // Center
        assert(result[100][200] == img[100][200]);               // Random interior point

        std::cout << "Test 1 passed: Identity kernel reproduces the image." << std::endl;
    }

    // Test 2: All-ones kernel with a single non-zero center pixel
    // Expect the result to have that value in a 3x3 block centered around the pixel
    {
        set_kernel_ones(kernel);
        fill_image_constant(img, 0);

        int center_i = IMG_SIZE / 2;
        int center_j = IMG_SIZE / 2;
        img[center_i][center_j] = 5;

        image_convolution(img, kernel, result);

        // Check the 3x3 neighborhood around the center
        for (int di = -1; di <= 1; ++di) {
            for (int dj = -1; dj <= 1; ++dj) {
                assert(result[center_i + di][center_j + dj] == 5);
            }
        }
        // Check some position outside the 3x3 neighborhood
        assert(result[center_i + 2][center_j + 2] == 0);

        // Print a small window around the center to visualize
        std::cout << "Test 2 result window around center (should be 5s in 3x3 block):" << std::endl;
        for (int i = center_i - 2; i <= center_i + 2; ++i) {
            for (int j = center_j - 2; j <= center_j + 2; ++j) {
                std::cout << result[i][j] << (j < center_j + 2 ? " " : "");
            }
            std::cout << std::endl;
        }

        std::cout << "Test 2 passed: 3x3 ones kernel around single center pixel." << std::endl;
    }

    // Test 3: All-ones kernel with a single non-zero pixel at the top-left corner
    // Expect the result to contain the value in positions that can overlap (limited by boundary)
    {
        set_kernel_ones(kernel);
        fill_image_constant(img, 0);

        img[0][0] = 4;

        image_convolution(img, kernel, result);

        // Only positions (0,0), (0,1), (1,0), (1,1) will have 4; others near (2,2) should be 0
        assert(result[0][0] == 4);
        assert(result[0][1] == 4);
        assert(result[1][0] == 4);
        assert(result[1][1] == 4);
        assert(result[2][2] == 0);

        std::cout << "Test 3 passed: Boundary handling with top-left corner pixel." << std::endl;
    }

    // Test 4: Laplacian kernel on a uniform image of ones
    // Expect interior points to be zero since sum of kernel weights is zero for full neighborhood
    {
        set_kernel_laplacian(kernel);
        fill_image_constant(img, 1);

        image_convolution(img, kernel, result);

        // Interior point (far from edges) should be zero
        int ii = 500, jj = 500;
        assert(result[ii][jj] == 0);

        // Also check another interior point
        assert(result[100][100] == 0);

        std::cout << "Test 4 passed: Laplacian kernel yields zero on uniform interior." << std::endl;
    }

    // Cleanup
    delete[] img;
    delete[] result;

    std::cout << "All tests passed." << std::endl;
    return 0;
}