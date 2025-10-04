// Converted from deadbeat_control_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: deadbeat_control.cpp ----
#include <ap_int.h>

#define N 1024

void deadbeat_control(ap_int<16> input[N], ap_int<16> output[N], ap_int<16> coefficients[N]) {

    for (int i = 0; i < N; i++) {

        ap_int<32> acc = 0;
        for (int j = 0; j <= i; j++) {

            acc += input[j] * coefficients[i - j];
        }
        output[i] = acc;
    }
}

// Top function name: deadbeat_control
