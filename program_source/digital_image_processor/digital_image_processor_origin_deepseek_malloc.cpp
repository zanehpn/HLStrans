#include <stdint.h>
#include <cstdlib>
#include <cstring>

#define IMG_SIZE 1024

void digital_image_processor(uint8_t input_image[IMG_SIZE][IMG_SIZE], uint8_t output_image[IMG_SIZE][IMG_SIZE]) {
    const size_t N = IMG_SIZE;
    uint8_t* in = static_cast<uint8_t*>(std::malloc(N * N * sizeof(uint8_t)));
    uint8_t* out = static_cast<uint8_t*>(std::malloc(N * N * sizeof(uint8_t)));

    if (!in || !out) {
        if (in) std::free(in);
        if (out) std::free(out);
        return;
    }

    // Copy input_image into dynamically allocated buffer 'in'
    for (size_t i = 0; i < N; ++i) {
        std::memcpy(in + i * N, input_image[i], N * sizeof(uint8_t));
    }

    // Compute 3x3 average into 'out' for inner pixels
    for (size_t i = 1; i < N - 1; ++i) {
        for (size_t j = 1; j < N - 1; ++j) {
            uint16_t pixel_sum = 0;
            pixel_sum += in[(i - 1) * N + (j - 1)];
            pixel_sum += in[(i - 1) * N + j];
            pixel_sum += in[(i - 1) * N + (j + 1)];
            pixel_sum += in[i * N + (j - 1)];
            pixel_sum += in[i * N + j];
            pixel_sum += in[i * N + (j + 1)];
            pixel_sum += in[(i + 1) * N + (j - 1)];
            pixel_sum += in[(i + 1) * N + j];
            pixel_sum += in[(i + 1) * N + (j + 1)];
            out[i * N + j] = static_cast<uint8_t>(pixel_sum / 9);
        }
    }

    // Write only inner pixels back to output_image, leaving borders untouched
    for (size_t i = 1; i < N - 1; ++i) {
        for (size_t j = 1; j < N - 1; ++j) {
            output_image[i][j] = out[i * N + j];
        }
    }

    std::free(in);
    std::free(out);
}
