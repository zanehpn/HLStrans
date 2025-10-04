// MALLOC_VARIANT

#include <cmath>

#define WIDTH 1024
#define HEIGHT 1024

void gaussian_blur(const float input[HEIGHT][WIDTH], float output[HEIGHT][WIDTH]) {

    float* kernel = new float[25]{
        1, 4, 7, 4, 1,
        4, 16, 26, 16, 4,
        7, 26, 41, 26, 7,
        4, 16, 26, 16, 4,
        1, 4, 7, 4, 1
    };
    const float kernel_sum = 273.0f;

    for (int y = 2; y < HEIGHT - 2; y++) {
        for (int x = 2; x < WIDTH - 2; x++) {
            float sum = 0.0f;
            for (int ky = 0; ky < 5; ky++) {
                for (int kx = 0; kx < 5; kx++) {
                    sum += input[y + ky - 2][x + kx - 2] * kernel[ky * 5 + kx];
                }
            }
            output[y][x] = sum / kernel_sum;
        }
    }

    delete[] kernel;
}
