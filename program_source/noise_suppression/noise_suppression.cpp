// Converted from noise_suppression.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: noise_suppression.cpp ----
#include <cmath>
#include <cstdint>

#define SIZE 1024

void noise_suppression(int16_t input[SIZE], int16_t output[SIZE], int16_t threshold) {
#pragma HLS ARRAY_PARTITION variable=output type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=input type=cyclic dim=1 factor=1
    for (int i = 0; i < SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        if (std::abs(input[i]) < threshold) {
            output[i] = 0;
        } else {
            output[i] = input[i];
        }
    }
}

// Top function name: noise_suppression
