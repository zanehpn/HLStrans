// Converted from video_display_processor_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: video_display_processor.cpp ----
#include <cstdint>

#define WIDTH 1024
#define HEIGHT 768

void video_display_processor(uint8_t input_frame[HEIGHT][WIDTH], uint8_t output_frame[HEIGHT][WIDTH]) {

    for (int y = 0; y < HEIGHT; y++) {

        for (int x = 0; x < WIDTH; x++) {

            // Example processing: Invert colors
            output_frame[y][x] = 255 - input_frame[y][x];
        }
    }
}

// Top function name: video_display_processor
