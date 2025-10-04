// Converted from video_controller_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: video_controller.cpp ----
#include <cstdint>

#define WIDTH 1920
#define HEIGHT 1080

void video_controller(uint8_t input_frame[HEIGHT][WIDTH], uint8_t output_frame[HEIGHT][WIDTH]) {

    int i, j;
    for (i = 0; i < HEIGHT; i++) {

        for (j = 0; j < WIDTH; j++) {

            // Example processing: Invert the pixel value
            output_frame[i][j] = 255 - input_frame[i][j];
        }
    }
}

// Top function name: video_controller
