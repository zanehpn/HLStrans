// MALLOC_VARIANT

#include <cstdint>

#define IMG_WIDTH 1024
#define IMG_HEIGHT 1024

void image_signal_processor(uint8_t input_image[IMG_HEIGHT][IMG_WIDTH], uint8_t output_image[IMG_HEIGHT][IMG_WIDTH]) {
    int total = IMG_HEIGHT * IMG_WIDTH;

    uint8_t* in_dyn = new uint8_t[total];
    uint8_t* out_dyn = new uint8_t[total];

    // Copy input to dynamic buffer
    for (int i = 0; i < IMG_HEIGHT; ++i) {
        for (int j = 0; j < IMG_WIDTH; ++j) {
            int idx = i * IMG_WIDTH + j;
            in_dyn[idx] = input_image[i][j];
        }
    }

    // Process: invert colors
    for (int idx = 0; idx < total; ++idx) {
        out_dyn[idx] = static_cast<uint8_t>(255 - in_dyn[idx]);
    }

    // Copy back to output
    for (int i = 0; i < IMG_HEIGHT; ++i) {
        for (int j = 0; j < IMG_WIDTH; ++j) {
            int idx = i * IMG_WIDTH + j;
            output_image[i][j] = out_dyn[idx];
        }
    }

    delete[] in_dyn;
    delete[] out_dyn;
}
