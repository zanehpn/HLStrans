// Converted from wallace_tree_adder_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: wallace_tree_adder.cpp ----
#include <ap_int.h>

#define N 1024

void wallace_tree_adder(ap_int<32> A[N], ap_int<32> B[N], ap_int<32> C[N]) {

    ap_int<32> partial_sums[N][N];
    ap_int<32> carry[N][N];

    // Initialize partial sums and carry arrays
    for (int i = 0; i < N; i++) {

        for (int j = 0; j < N; j++) {

            partial_sums[i][j] = 0;
            carry[i][j] = 0;
        }
    }

    // Generate partial sums and carry
    for (int i = 0; i < N; i++) {

        for (int j = 0; j < N; j++) {

            if (j == 0) {
                partial_sums[i][j] = A[i] ^ B[i];
                carry[i][j] = A[i] & B[i];
            } else {
                partial_sums[i][j] = partial_sums[i][j-1] ^ carry[i][j-1];
                carry[i][j] = partial_sums[i][j-1] & carry[i][j-1];
            }
        }
    }

    // Sum the partial sums and carry to get the final result
    for (int i = 0; i < N; i++) {

        C[i] = partial_sums[i][N-1] ^ carry[i][N-1];
    }
}

// Top function name: wallace_tree_adder
