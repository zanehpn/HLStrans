// Converted from odd_parity_generator.c to .cpp by convert_and_transform_with_deepseek_auto.py

// ---- file: odd_parity_generator.cpp ----
#include <ap_int.h>

#define ARRAY_SIZE 1024

void odd_parity_generator(ap_uint<1> input[ARRAY_SIZE], ap_uint<1> output[ARRAY_SIZE]) {
#pragma HLS ARRAY_PARTITION variable=output type=cyclic dim=1 factor=16
#pragma HLS ARRAY_PARTITION variable=input type=cyclic dim=1 factor=4
    for (int i = 0; i < ARRAY_SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=4
        ap_uint<1> parity = 0;
        for (int j = 0; j < 8; j++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=16
            parity ^= (input[i] >> j) & 1;
        }
        output[i] = parity;
    }
}

// Top function name: odd_parity_generator
