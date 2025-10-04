// ---- file: cholesky_decomposition.cpp ----
#include <cmath>

#define MATRIX_SIZE 1024

void cholesky_decomposition(double A[MATRIX_SIZE][MATRIX_SIZE], double L[MATRIX_SIZE][MATRIX_SIZE]) {
#pragma HLS ARRAY_PARTITION variable=L type=cyclic dim=2 factor=1
#pragma HLS ARRAY_PARTITION variable=L type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=A type=cyclic dim=2 factor=1
#pragma HLS ARRAY_PARTITION variable=A type=cyclic dim=1 factor=1
    for (int i = 0; i < MATRIX_SIZE; i++) {
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=1
        for (int j = 0; j <= i; j++) {
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=1
            double sum = 0.0;
            for (int k = 0; k < j; k++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=8
                sum += L[i][k] * L[j][k];
            }
            if (i == j) {
                L[i][j] = sqrt(A[i][i] - sum);
            } else {
                L[i][j] = (A[i][j] - sum) / L[j][j];
            }
        }
    }
}

// Top function name: cholesky_decomposition
