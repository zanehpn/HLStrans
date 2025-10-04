// Converted from clock_divider_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: clock_divider.cpp ----
#include <ap_int.h>

#define N 1024

void clock_divider(ap_uint<32> input_clock[N], ap_uint<32> output_clock[N], ap_uint<32> divisor) {

    for (int i = 0; i < N; i++) {

        output_clock[i] = input_clock[i] / divisor;
    }
}

// Top function name: clock_divider
