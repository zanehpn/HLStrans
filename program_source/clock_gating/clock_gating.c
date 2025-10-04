// ---- file: clock_gating.cpp ----
#include <stdint.h>

#define ARRAY_SIZE 1024

void clock_gating(uint32_t input[ARRAY_SIZE], uint32_t output[ARRAY_SIZE], uint32_t threshold) {
#pragma HLS ARRAY_PARTITION variable=output type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=input type=cyclic dim=1 factor=1
    for (int i = 0; i < ARRAY_SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        if (input[i] > threshold) {
            output[i] = input[i];
        } else {
            output[i] = 0;
        }
    }
}

// Top function name: clock_gating
