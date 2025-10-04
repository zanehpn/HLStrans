// Converted from rgb_to_yuv_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: rgb_to_yuv.cpp ----
#include <cstdint>

#define WIDTH 1024
#define HEIGHT 1024

void rgb_to_yuv(uint8_t R[HEIGHT][WIDTH], uint8_t G[HEIGHT][WIDTH], uint8_t B[HEIGHT][WIDTH], uint8_t Y[HEIGHT][WIDTH], uint8_t U[HEIGHT][WIDTH], uint8_t V[HEIGHT][WIDTH]) {

    for (int i = 0; i < HEIGHT; i++) {

        for (int j = 0; j < WIDTH; j++) {

            uint8_t r = R[i][j];
            uint8_t g = G[i][j];
            uint8_t b = B[i][j];

            uint8_t y = static_cast<uint8_t>(0.299 * r + 0.587 * g + 0.114 * b);
            uint8_t u = static_cast<uint8_t>(-0.14713 * r - 0.28886 * g + 0.436 * b + 128);
            uint8_t v = static_cast<uint8_t>(0.615 * r - 0.51499 * g - 0.10001 * b + 128);

            Y[i][j] = y;
            U[i][j] = u;
            V[i][j] = v;
        }
    }
}

// Top function name: rgb_to_yuv
