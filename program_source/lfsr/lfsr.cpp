// Converted from lfsr.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: lfsr.cpp ----
#include <ap_int.h>

#define LFSR_SIZE 1024

void lfsr(ap_uint<32> seed, ap_uint<32> lfsr_output[LFSR_SIZE]) {
#pragma HLS ARRAY_PARTITION variable=lfsr_output type=cyclic dim=1 factor=8
    ap_uint<32> lfsr_reg = seed;
    ap_uint<32> feedback;

    for (int i = 0; i < LFSR_SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2
        feedback = (lfsr_reg ^ (lfsr_reg >> 1) ^ (lfsr_reg >> 21) ^ (lfsr_reg >> 31)) & 1;
        lfsr_reg = (lfsr_reg >> 1) | (feedback << 31);
        lfsr_output[i] = lfsr_reg;
    }
}

// Top function name: lfsr
