// ---- file: matrix_inversion.cpp ----
#include <cmath>
#include <cstring>

#define MATRIX_SIZE 1024

void matrix_inversion(float A[MATRIX_SIZE][MATRIX_SIZE], float A_inv[MATRIX_SIZE][MATRIX_SIZE]) {
#pragma HLS ARRAY_PARTITION variable=A_inv type=cyclic dim=2 factor=1
#pragma HLS ARRAY_PARTITION variable=A_inv type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=A type=cyclic dim=2 factor=8
#pragma HLS ARRAY_PARTITION variable=A type=cyclic dim=1 factor=2
    int i, j, k;
    float temp;

    // Initialize A_inv to identity matrix
    for (i = 0; i < MATRIX_SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=4
        for (j = 0; j < MATRIX_SIZE; j++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2
            if (i == j) {
                A_inv[i][j] = 1.0;
            } else {
                A_inv[i][j] = 0.0;
            }
        }
    }

    // Perform Gaussian elimination
    for (i = 0; i < MATRIX_SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=8
        temp = A[i][i];
        for (j = 0; j < MATRIX_SIZE; j++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=8
            A[i][j] /= temp;
            A_inv[i][j] /= temp;
        }
        for (j = 0; j < MATRIX_SIZE; j++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
            if (i != j) {
                temp = A[j][i];
                for (k = 0; k < MATRIX_SIZE; k++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2
                    A[j][k] -= A[i][k] * temp;
                    A_inv[j][k] -= A_inv[i][k] * temp;
                }
            }
        }
    }
}

// Top function name: matrix_inversion
