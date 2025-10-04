// Converted from cryptographic_rng.c to .cpp by convert_and_transform_with_deepseek_auto.py

// ---- file: cryptographic_rng.cpp ----
#include <ap_int.h>

#define ARRAY_SIZE 1024

void cryptographic_rng(ap_uint<32> seed, ap_uint<32> output[ARRAY_SIZE]) {
#pragma HLS ARRAY_PARTITION variable=output type=cyclic dim=1 factor=1
    ap_uint<32> state = seed;
    for (int i = 0; i < ARRAY_SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        state = state ^ (state << 13);
        state = state ^ (state >> 17);
        state = state ^ (state << 5);
        output[i] = state;
    }
}

// Top function name: cryptographic_rng
