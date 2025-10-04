#include <cstdint>

#define SIZE 1024

void dma_controller(uint32_t input[8][SIZE], uint32_t output[8][SIZE]) {
    const int channels = 8;
    const int elements = SIZE;
    const int total = channels * elements;

    uint32_t* in_buf = new uint32_t[total];
    uint32_t* out_buf = new uint32_t[total];

    for (int channel = 0; channel < channels; ++channel) {
        for (int i = 0; i < elements; ++i) {
            in_buf[channel * elements + i] = input[channel][i];
        }
    }

    for (int idx = 0; idx < total; ++idx) {
        out_buf[idx] = in_buf[idx];
    }

    for (int channel = 0; channel < channels; ++channel) {
        for (int i = 0; i < elements; ++i) {
            output[channel][i] = out_buf[channel * elements + i];
        }
    }

    delete[] in_buf;
    delete[] out_buf;
}
