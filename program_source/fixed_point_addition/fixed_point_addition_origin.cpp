// Converted from fixed_point_addition_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: fixed_point_addition.cpp ----
#include <ap_fixed.h>

#define ARRAY_SIZE 1024

typedef ap_fixed<16, 8> fixed_point_t;

void fixed_point_addition(fixed_point_t A[ARRAY_SIZE], fixed_point_t B[ARRAY_SIZE], fixed_point_t C[ARRAY_SIZE]) {

    for (int i = 0; i < ARRAY_SIZE; i++) {

        C[i] = A[i] + B[i];
    }
}

// Top function name: fixed_point_addition
