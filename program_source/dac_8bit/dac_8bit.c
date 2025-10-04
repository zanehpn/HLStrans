// ---- file: dac_8bit.cpp ----
#include <stdint.h>

#define SIZE 1024

void dac_8bit(uint8_t input[SIZE], uint16_t output[SIZE]) {
#pragma HLS ARRAY_PARTITION variable=output type=cyclic dim=1 factor=16
#pragma HLS ARRAY_PARTITION variable=input type=cyclic dim=1 factor=4
    for (int i = 0; i < SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=4
        output[i] = (uint16_t)input[i] * 256;
    }
}

// Top function name: dac_8bit
