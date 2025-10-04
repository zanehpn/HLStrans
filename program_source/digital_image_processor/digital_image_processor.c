// ---- file: digital_image_processor.cpp ----
#include <stdint.h>

#define IMG_SIZE 1024

void digital_image_processor(uint8_t input_image[IMG_SIZE][IMG_SIZE], uint8_t output_image[IMG_SIZE][IMG_SIZE]) {
#pragma HLS ARRAY_PARTITION variable=output_image type=cyclic dim=2 factor=4
#pragma HLS ARRAY_PARTITION variable=output_image type=cyclic dim=1 factor=2
#pragma HLS ARRAY_PARTITION variable=input_image type=cyclic dim=2 factor=2
#pragma HLS ARRAY_PARTITION variable=input_image type=cyclic dim=1 factor=1
    int i, j;
    for (i = 1; i < IMG_SIZE - 1; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        for (j = 1; j < IMG_SIZE - 1; j++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
            uint16_t pixel_sum = 0;
            pixel_sum += input_image[i-1][j-1];
            pixel_sum += input_image[i-1][j];
            pixel_sum += input_image[i-1][j+1];
            pixel_sum += input_image[i][j-1];
            pixel_sum += input_image[i][j];
            pixel_sum += input_image[i][j+1];
            pixel_sum += input_image[i+1][j-1];
            pixel_sum += input_image[i+1][j];
            pixel_sum += input_image[i+1][j+1];
            output_image[i][j] = pixel_sum / 9;
        }
    }
}

// Top function name: digital_image_processor
