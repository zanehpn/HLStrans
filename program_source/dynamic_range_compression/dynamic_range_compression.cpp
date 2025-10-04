// Converted from dynamic_range_compression.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: dynamic_range_compression.cpp ----
#include <cmath>
#include <algorithm>

#define ARRAY_SIZE 1024

void dynamic_range_compression(float input[ARRAY_SIZE], float output[ARRAY_SIZE], float threshold, float compression_ratio) {
#pragma HLS ARRAY_PARTITION variable=output type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=input type=cyclic dim=1 factor=4
    for (int i = 0; i < ARRAY_SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        if (input[i] > threshold) {
            output[i] = threshold + (input[i] - threshold) / compression_ratio;
        } else if (input[i] < -threshold) {
            output[i] = -threshold + (input[i] + threshold) / compression_ratio;
        } else {
            output[i] = input[i];
        }
    }
}

// Top function name: dynamic_range_compression
