// Converted from morphological_operations.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: morphological_operations.cpp ----
#include <cstdint>

#define IMG_SIZE 1024

void morphological_operations(uint8_t input_image[IMG_SIZE][IMG_SIZE], uint8_t output_image[IMG_SIZE][IMG_SIZE], bool is_dilation) {
#pragma HLS ARRAY_PARTITION variable=output_image type=cyclic dim=2 factor=2
#pragma HLS ARRAY_PARTITION variable=output_image type=cyclic dim=1 factor=16
#pragma HLS ARRAY_PARTITION variable=input_image type=cyclic dim=2 factor=1
#pragma HLS ARRAY_PARTITION variable=input_image type=cyclic dim=1 factor=1
    int i, j, m, n;
    uint8_t structuring_element[3][3] = {
        {1, 1, 1},
        {1, 1, 1},
        {1, 1, 1}
    };

    for (i = 1; i < IMG_SIZE - 1; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        for (j = 1; j < IMG_SIZE - 1; j++) {
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=1
            uint8_t result = is_dilation ? 0 : 255;
            for (m = -1; m <= 1; m++) {
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=4
                for (n = -1; n <= 1; n++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=16
                    if (structuring_element[m + 1][n + 1]) {
                        if (is_dilation) {
                            result = result > input_image[i + m][j + n] ? result : input_image[i + m][j + n];
                        } else {
                            result = result < input_image[i + m][j + n] ? result : input_image[i + m][j + n];
                        }
                    }
                }
            }
            output_image[i][j] = result;
        }
    }
}

// Top function name: morphological_operations
