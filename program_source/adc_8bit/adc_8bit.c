// ---- file: adc_8bit.cpp ----
#include <stdint.h>

#define SIZE 1024

void adc_8bit(uint8_t input[SIZE], uint8_t output[SIZE]) {
#pragma HLS ARRAY_PARTITION variable=output type=cyclic dim=1 factor=16
#pragma HLS ARRAY_PARTITION variable=input type=cyclic dim=1 factor=4
    for (int i = 0; i < SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=4
        uint8_t sample = input[i];
        output[i] = sample;
    }
}

// Top function name: adc_8bit
