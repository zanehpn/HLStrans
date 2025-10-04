#include <cstdint>

#define IMG_SIZE 1024

void morphological_operations(uint8_t input_image[IMG_SIZE][IMG_SIZE], uint8_t output_image[IMG_SIZE][IMG_SIZE], bool is_dilation) {
    uint8_t structuring_element[3][3] = {
        {1, 1, 1},
        {1, 1, 1},
        {1, 1, 1}
    };

    // Dynamically allocate large buffers
    uint8_t* in_buf = new uint8_t[IMG_SIZE * IMG_SIZE];
    uint8_t* out_buf = new uint8_t[IMG_SIZE * IMG_SIZE];

    // Copy input into dynamic buffer
    for (int i = 0; i < IMG_SIZE; ++i) {
        for (int j = 0; j < IMG_SIZE; ++j) {
            in_buf[i * IMG_SIZE + j] = input_image[i][j];
        }
    }

    // Compute morphological operation into out_buf (only interior pixels)
    for (int i = 1; i < IMG_SIZE - 1; i++) {
        for (int j = 1; j < IMG_SIZE - 1; j++) {
            uint8_t result = is_dilation ? 0 : 255;
            for (int m = -1; m <= 1; m++) {
                for (int n = -1; n <= 1; n++) {
                    if (structuring_element[m + 1][n + 1]) {
                        uint8_t v = in_buf[(i + m) * IMG_SIZE + (j + n)];
                        if (is_dilation) {
                            result = result > v ? result : v;
                        } else {
                            result = result < v ? result : v;
                        }
                    }
                }
            }
            out_buf[i * IMG_SIZE + j] = result;
        }
    }

    // Copy back only computed interior region to preserve border behavior
    for (int i = 1; i < IMG_SIZE - 1; i++) {
        for (int j = 1; j < IMG_SIZE - 1; j++) {
            output_image[i][j] = out_buf[i * IMG_SIZE + j];
        }
    }

    delete[] in_buf;
    delete[] out_buf;
}
