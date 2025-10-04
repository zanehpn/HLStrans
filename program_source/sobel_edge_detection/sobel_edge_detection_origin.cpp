// Converted from sobel_edge_detection_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: sobel_edge_detection.cpp ----
#include <cmath>
#include <cstdint>

#define IMG_WIDTH 1024
#define IMG_HEIGHT 1024

void sobel_edge_detection(uint8_t input_image[IMG_HEIGHT][IMG_WIDTH], uint8_t output_image[IMG_HEIGHT][IMG_WIDTH]) {

    int gx, gy;
    int sobel_x[3][3] = {
        {-1, 0, 1},
        {-2, 0, 2},
        {-1, 0, 1}
    };
    int sobel_y[3][3] = {
        {-1, -2, -1},
        {0, 0, 0},
        {1, 2, 1}
    };

    for (int i = 1; i < IMG_HEIGHT - 1; i++) {

        for (int j = 1; j < IMG_WIDTH - 1; j++) {

            gx = 0;
            gy = 0;
            for (int x = -1; x <= 1; x++) {

                for (int y = -1; y <= 1; y++) {

                    gx += input_image[i + x][j + y] * sobel_x[x + 1][y + 1];
                    gy += input_image[i + x][j + y] * sobel_y[x + 1][y + 1];
                }
            }
            int magnitude = sqrt(gx * gx + gy * gy);
            if (magnitude > 255) magnitude = 255;
            output_image[i][j] = (uint8_t)magnitude;
        }
    }
}
// Top function name: sobel_edge_detection
