// ---- file: pulse_generator.cpp ----
#include <iostream>

#define SIZE 1024

void pulse_generator(int threshold, int pulse_width, int output[SIZE]) {
#pragma HLS ARRAY_PARTITION variable=output type=cyclic dim=1 factor=1
    for (int i = 0; i < SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        if (i % pulse_width < threshold) {
            output[i] = 1;
        } else {
            output[i] = 0;
        }
    }
}

// Top function name: pulse_generator
