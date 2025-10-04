#include <cstddef>
#include <stdint.h>

#define WIDTH 1024
#define HEIGHT 1024

void video_processor(uint8_t input[HEIGHT][WIDTH], uint8_t output[HEIGHT][WIDTH]) {
    const size_t total = static_cast<size_t>(HEIGHT) * static_cast<size_t>(WIDTH);
    uint8_t* inBuf = new uint8_t[total];
    uint8_t* outBuf = new uint8_t[total];

    // Copy input to dynamically allocated buffer
    for (int i = 0; i < HEIGHT; ++i) {
        for (int j = 0; j < WIDTH; ++j) {
            inBuf[static_cast<size_t>(i) * WIDTH + j] = input[i][j];
        }
    }

    // Process using dynamic buffers
    for (size_t idx = 0; idx < total; ++idx) {
        outBuf[idx] = static_cast<uint8_t>(255 - inBuf[idx]);
    }

    // Copy back to output
    for (int i = 0; i < HEIGHT; ++i) {
        for (int j = 0; j < WIDTH; ++j) {
            output[i][j] = outBuf[static_cast<size_t>(i) * WIDTH + j];
        }
    }

    delete[] inBuf;
    delete[] outBuf;
}
