// Converted from matrix_multiply_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: matrix_multiply.cpp ----
#include <ap_int.h>

#define SIZE 1024

void matrix_multiply(ap_int<16> A[SIZE][SIZE], ap_int<16> B[SIZE][SIZE], ap_int<32> C[SIZE][SIZE]) {

    for (int i = 0; i < SIZE; i++) {

        for (int j = 0; j < SIZE; j++) {

            C[i][j] = 0;
            for (int k = 0; k < SIZE; k++) {

                C[i][j] += A[i][k] * B[k][j];
            }
        }
    }
}

// Top function name: matrix_multiply
