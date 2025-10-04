// Converted from convolutional_encoder.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: convolutional_encoder.cpp ----
#include <ap_int.h>

#define N 1024

void convolutional_encoder(ap_uint<1> input[N], ap_uint<2> output[2*N]) {
#pragma HLS ARRAY_PARTITION variable=output type=cyclic dim=1 factor=16
#pragma HLS ARRAY_PARTITION variable=input type=cyclic dim=1 factor=2
    const ap_uint<3> G1 = 0b111; // Generator polynomial 1
    const ap_uint<3> G2 = 0b101; // Generator polynomial 2

    ap_uint<3> shift_reg = 0;

    for (int i = 0; i < N; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2
        shift_reg = (shift_reg << 1) | input[i];

        ap_uint<1> out1 = (shift_reg & G1).xor_reduce();
        ap_uint<1> out2 = (shift_reg & G2).xor_reduce();

        output[2*i] = out1;
        output[2*i + 1] = out2;
    }
}

// Top function name: convolutional_encoder
