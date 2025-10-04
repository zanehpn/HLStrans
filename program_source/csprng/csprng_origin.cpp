// Converted from csprng_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: csprng.cpp ----
#include <ap_int.h>

#define SIZE 1024

void csprng(ap_uint<32> seed, ap_uint<32> output[SIZE]) {

    ap_uint<32> state = seed;
    ap_uint<32> multiplier = 1664525;
    ap_uint<32> increment = 1013904223;

    for (int i = 0; i < SIZE; i++) {

        state = state * multiplier + increment;
        output[i] = state;
    }
}

// Top function name: csprng
