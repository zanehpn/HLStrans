// ---- file: motion_processor.cpp ----
#include <ap_int.h>

#define SIZE 1024

void motion_processor(ap_int<16> input1[SIZE], ap_int<16> input2[SIZE], ap_int<16> output[SIZE]) {
#pragma HLS ARRAY_PARTITION variable=output type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=input2 type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=input1 type=cyclic dim=1 factor=1
    for (int i = 0; i < SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        ap_int<16> diff = input1[i] - input2[i];
        if (diff < 0) {
            output[i] = -diff;
        } else {
            output[i] = diff;
        }
    }
}
// Top function name: motion_processor
