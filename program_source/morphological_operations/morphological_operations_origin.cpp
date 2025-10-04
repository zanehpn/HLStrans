// Converted from morphological_operations_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: morphological_operations.cpp ----
#include <cstdint>

#define IMG_SIZE 1024

void morphological_operations(uint8_t input_image[IMG_SIZE][IMG_SIZE], uint8_t output_image[IMG_SIZE][IMG_SIZE], bool is_dilation) {

    int i, j, m, n;
    uint8_t structuring_element[3][3] = {
        {1, 1, 1},
        {1, 1, 1},
        {1, 1, 1}
    };

    for (i = 1; i < IMG_SIZE - 1; i++) {

        for (j = 1; j < IMG_SIZE - 1; j++) {

            uint8_t result = is_dilation ? 0 : 255;
            for (m = -1; m <= 1; m++) {

                for (n = -1; n <= 1; n++) {

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
