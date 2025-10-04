// Converted from non_restoring_divider.c to .cpp by convert_and_transform_with_deepseek_auto.py

// ---- file: non_restoring_divider.cpp ----
#include <ap_int.h>

#define N 1024

void non_restoring_divider(ap_uint<32> dividend, ap_uint<32> divisor, ap_uint<32> &quotient, ap_uint<32> &remainder) {
    ap_uint<33> A = 0;
    ap_uint<33> M = divisor;
    ap_uint<33> Q = dividend;
    ap_uint<33> temp;

    for (int i = 0; i < 32; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        A = (A << 1) | (Q >> 31);
        Q = Q << 1;

        temp = A - M;
        if (temp[32] == 0) {
            A = temp;
            Q = Q | 1;
        } else {
            A = A;
        }
    }

    if (A[32] == 1) {
        A = A + M;
    }

    quotient = Q;
    remainder = A.range(31, 0);
}

// Top function name: non_restoring_divider
