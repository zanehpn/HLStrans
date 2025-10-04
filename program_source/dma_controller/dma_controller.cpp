// Converted from dma_controller.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: dma_controller.cpp ----
#include <stdint.h>

#define SIZE 1024

void dma_controller(uint32_t input[8][SIZE], uint32_t output[8][SIZE]) {
#pragma HLS ARRAY_PARTITION variable=output type=cyclic dim=2 factor=16
#pragma HLS ARRAY_PARTITION variable=output type=cyclic dim=1 factor=2
#pragma HLS ARRAY_PARTITION variable=input type=cyclic dim=2 factor=16
#pragma HLS ARRAY_PARTITION variable=input type=cyclic dim=1 factor=1
    for (int channel = 0; channel < 8; channel++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        for (int i = 0; i < SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=16
            output[channel][i] = input[channel][i];
        }
    }
}

// Top function name: dma_controller
