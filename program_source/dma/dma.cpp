// Converted from dma.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: dma.cpp ----
#include <ap_int.h>

#define SIZE 1024

void dma(ap_uint<32> input[SIZE], ap_uint<32> output[SIZE]) {
#pragma HLS ARRAY_PARTITION variable=output type=cyclic dim=1 factor=16
#pragma HLS ARRAY_PARTITION variable=input type=cyclic dim=1 factor=4
    for (int i = 0; i < SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=4
        output[i] = input[i];
    }
}

// Top function name: dma
