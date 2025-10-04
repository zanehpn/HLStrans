// Converted from fir_filter_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: fir_filter.cpp ----
#include <ap_int.h>

#define N 1024

void fir_filter(ap_int<16> input[N], ap_int<16> output[N], ap_int<16> coeffs[64]) {

    ap_int<32> acc;
    for (int i = 0; i < N; i++) {

        acc = 0;
        for (int j = 0; j < 64; j++) {

            if (i - j >= 0) {
                acc += input[i - j] * coeffs[j];
            }
        }
        output[i] = acc >> 15; // Assuming fixed-point arithmetic with scaling
    }
}

// Top function name: fir_filter
