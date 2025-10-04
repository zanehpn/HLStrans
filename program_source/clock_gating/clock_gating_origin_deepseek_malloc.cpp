#include <stdint.h>
#include <cstdlib>

#define ARRAY_SIZE 1024

void clock_gating(uint32_t input[ARRAY_SIZE], uint32_t output[ARRAY_SIZE], uint32_t threshold) {
    uint32_t* in_buf = static_cast<uint32_t*>(std::malloc(ARRAY_SIZE * sizeof(uint32_t)));
    uint32_t* out_buf = static_cast<uint32_t*>(std::malloc(ARRAY_SIZE * sizeof(uint32_t)));

    if (!in_buf || !out_buf) {
        // Fallback to direct processing if allocation fails
        for (int i = 0; i < ARRAY_SIZE; i++) {
            output[i] = (input[i] > threshold) ? input[i] : 0;
        }
        if (in_buf) std::free(in_buf);
        if (out_buf) std::free(out_buf);
        return;
    }

    // Copy input to dynamic buffer
    for (int i = 0; i < ARRAY_SIZE; i++) {
        in_buf[i] = input[i];
    }

    // Compute using dynamic buffers
    for (int i = 0; i < ARRAY_SIZE; i++) {
        out_buf[i] = (in_buf[i] > threshold) ? in_buf[i] : 0;
    }

    // Copy result back to output
    for (int i = 0; i < ARRAY_SIZE; i++) {
        output[i] = out_buf[i];
    }

    std::free(in_buf);
    std::free(out_buf);
}
