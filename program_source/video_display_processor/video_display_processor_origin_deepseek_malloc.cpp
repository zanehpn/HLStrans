#include <cstdint>

#define WIDTH 1024
#define HEIGHT 768

void video_display_processor(uint8_t input_frame[HEIGHT][WIDTH], uint8_t output_frame[HEIGHT][WIDTH]) {
    const size_t total = static_cast<size_t>(HEIGHT) * static_cast<size_t>(WIDTH);

    // Dynamically allocate 1D buffers to represent the 2D frames
    uint8_t* inbuf = new uint8_t[total];
    uint8_t* outbuf = new uint8_t[total];

    // Copy input 2D array into dynamic 1D buffer
    for (int y = 0; y < HEIGHT; ++y) {
        for (int x = 0; x < WIDTH; ++x) {
            inbuf[static_cast<size_t>(y) * WIDTH + x] = input_frame[y][x];
        }
    }

    // Process: invert colors on the dynamic buffer
    for (size_t i = 0; i < total; ++i) {
        outbuf[i] = static_cast<uint8_t>(255 - inbuf[i]);
    }

    // Copy processed data back into the output 2D array
    for (int y = 0; y < HEIGHT; ++y) {
        for (int x = 0; x < WIDTH; ++x) {
            output_frame[y][x] = outbuf[static_cast<size_t>(y) * WIDTH + x];
        }
    }

    delete[] inbuf;
    delete[] outbuf;
}
