// Converted from fir_filter.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: fir_filter.cpp ----
#include <ap_int.h>

#define N 1024

void fir_filter(ap_int<16> input[N], ap_int<16> output[N], ap_int<16> coeffs[64]) {
#pragma HLS ARRAY_PARTITION variable=coeffs type=cyclic dim=1 factor=8
#pragma HLS ARRAY_PARTITION variable=output type=cyclic dim=1 factor=2
#pragma HLS ARRAY_PARTITION variable=input type=cyclic dim=1 factor=1
    ap_int<32> acc;
    for (int i = 0; i < N; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        acc = 0;
        for (int j = 0; j < 64; j++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
            if (i - j >= 0) {
                acc += input[i - j] * coeffs[j];
            }
        }
        output[i] = acc >> 15; // Assuming fixed-point arithmetic with scaling
    }
}

// Top function name: fir_filter
