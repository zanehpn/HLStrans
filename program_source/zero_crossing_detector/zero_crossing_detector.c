// ---- file: zero_crossing_detector.cpp ----
#include <stdint.h>

#define ARRAY_SIZE 1024

void zero_crossing_detector(int16_t input[ARRAY_SIZE], int8_t output[ARRAY_SIZE]) {
#pragma HLS ARRAY_PARTITION variable=output type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=input type=cyclic dim=1 factor=1
    for (int i = 0; i < ARRAY_SIZE - 1; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        if ((input[i] > 0 && input[i + 1] <= 0) || (input[i] < 0 && input[i + 1] >= 0)) {
            output[i] = 1;
        } else {
            output[i] = 0;
        }
    }
    output[ARRAY_SIZE - 1] = 0; // Last element has no next element to compare
}

// Top function name: zero_crossing_detector
