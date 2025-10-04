// MALLOC_VARIANT
#include <cmath>
#include <cstdint>

#define SIZE 1024

void noise_suppression(int16_t input[SIZE], int16_t output[SIZE], int16_t threshold) {
    int16_t* inBuf = new int16_t[SIZE];
    int16_t* outBuf = new int16_t[SIZE];

    for (int i = 0; i < SIZE; ++i) {
        inBuf[i] = input[i];
    }

    for (int i = 0; i < SIZE; ++i) {
        if (std::abs(inBuf[i]) < threshold) {
            outBuf[i] = 0;
        } else {
            outBuf[i] = inBuf[i];
        }
    }

    for (int i = 0; i < SIZE; ++i) {
        output[i] = outBuf[i];
    }

    delete[] inBuf;
    delete[] outBuf;
}
