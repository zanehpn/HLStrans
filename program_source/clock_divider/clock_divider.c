// ---- file: clock_divider.cpp ----
#include <ap_int.h>

#define N 1024

void clock_divider(ap_uint<32> input_clock[N], ap_uint<32> output_clock[N], ap_uint<32> divisor) {
#pragma HLS ARRAY_PARTITION variable=output_clock type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=input_clock type=cyclic dim=1 factor=1
    for (int i = 0; i < N; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        output_clock[i] = input_clock[i] / divisor;
    }
}

// Top function name: clock_divider
