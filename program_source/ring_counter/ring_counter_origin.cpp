// Converted from ring_counter.c to .cpp by convert_and_transform_with_deepseek_auto.py

// ---- file: ring_counter.cpp ----
#include <ap_int.h>

#define RING_SIZE 1024

void ring_counter(ap_uint<32> counter[RING_SIZE], ap_uint<32> output[RING_SIZE]) {
#pragma HLS ARRAY_PARTITION variable=output type=cyclic dim=1 factor=4
#pragma HLS ARRAY_PARTITION variable=counter type=cyclic dim=1 factor=4
    for (int i = 0; i < RING_SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=4
        if (i == 0) {
            output[i] = counter[RING_SIZE - 1];
        } else {
            output[i] = counter[i - 1];
        }
    }
}

// Top function name: ring_counter
