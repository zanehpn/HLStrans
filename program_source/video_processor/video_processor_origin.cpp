// Converted from video_processor_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: video_processor.cpp ----
#include <stdint.h>

#define WIDTH 1024
#define HEIGHT 1024

void video_processor(uint8_t input[HEIGHT][WIDTH], uint8_t output[HEIGHT][WIDTH]) {

    for (int i = 0; i < HEIGHT; i++) {

        for (int j = 0; j < WIDTH; j++) {

            uint8_t pixel = input[i][j];
            // Example processing: simple inversion
            output[i][j] = 255 - pixel;
        }
    }
}

// Top function name: video_processor
