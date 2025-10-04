// ---- file: frequency_divider.cpp ----
#include <ap_int.h>

#define ARRAY_SIZE 1024

void frequency_divider(int input_freq[ARRAY_SIZE], int divisor, int output_freq[ARRAY_SIZE]) {
#pragma HLS ARRAY_PARTITION variable=output_freq type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=input_freq type=cyclic dim=1 factor=1
    for (int i = 0; i < ARRAY_SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        output_freq[i] = input_freq[i] / divisor;
    }
}

// Top function name: frequency_divider
