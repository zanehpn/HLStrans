// Converted from image_signal_processor.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: image_signal_processor.cpp ----
#include <cstdint>

#define IMG_WIDTH 1024
#define IMG_HEIGHT 1024

void image_signal_processor(uint8_t input_image[IMG_HEIGHT][IMG_WIDTH], uint8_t output_image[IMG_HEIGHT][IMG_WIDTH]) {
#pragma HLS ARRAY_PARTITION variable=output_image type=cyclic dim=2 factor=16
#pragma HLS ARRAY_PARTITION variable=output_image type=cyclic dim=1 factor=16
#pragma HLS ARRAY_PARTITION variable=input_image type=cyclic dim=2 factor=16
#pragma HLS ARRAY_PARTITION variable=input_image type=cyclic dim=1 factor=1
    int i, j;
    // Simple image processing: Invert colors
    for (i = 0; i < IMG_HEIGHT; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2
        for (j = 0; j < IMG_WIDTH; j++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
            output_image[i][j] = 255 - input_image[i][j];
        }
    }
}

// Top function name: image_signal_processor
