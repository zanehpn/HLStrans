// ---- file: deadbeat_control.cpp ----
#include <ap_int.h>

#define N 1024

void deadbeat_control(ap_int<16> input[N], ap_int<16> output[N], ap_int<16> coefficients[N]) {
#pragma HLS ARRAY_PARTITION variable=coefficients type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=output type=cyclic dim=1 factor=2
#pragma HLS ARRAY_PARTITION variable=input type=cyclic dim=1 factor=1
    for (int i = 0; i < N; i++) {
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=1
        ap_int<32> acc = 0;
        for (int j = 0; j <= i; j++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
            acc += input[j] * coefficients[i - j];
        }
        output[i] = acc;
    }
}

// Top function name: deadbeat_control
