// Converted from nearest_neighbor_interpolation.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: nearest_neighbor_interpolation.cpp ----
#include <cmath>

#define INPUT_SIZE 1024
#define OUTPUT_SIZE 2048

void nearest_neighbor_interpolation(float input[INPUT_SIZE], float output[OUTPUT_SIZE]) {
#pragma HLS ARRAY_PARTITION variable=output type=cyclic dim=1 factor=16
#pragma HLS ARRAY_PARTITION variable=input type=cyclic dim=1 factor=2
    int scale_factor = OUTPUT_SIZE / INPUT_SIZE;
    for (int i = 0; i < OUTPUT_SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=4
        int nearest_index = i / scale_factor;
        output[i] = input[nearest_index];
    }
}

// Top function name: nearest_neighbor_interpolation
