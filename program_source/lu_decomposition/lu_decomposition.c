// ---- file: lu_decomposition.cpp ----
#include <cmath>

#define N 1024

void lu_decomposition(double A[N][N], double L[N][N], double U[N][N]) {
#pragma HLS ARRAY_PARTITION variable=U type=cyclic dim=2 factor=2
#pragma HLS ARRAY_PARTITION variable=U type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=L type=cyclic dim=2 factor=2
#pragma HLS ARRAY_PARTITION variable=L type=cyclic dim=1 factor=2
#pragma HLS ARRAY_PARTITION variable=A type=cyclic dim=2 factor=1
#pragma HLS ARRAY_PARTITION variable=A type=cyclic dim=1 factor=16
    int i, j, k;

    // Initialize L and U matrices
    for (i = 0; i < N; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2
        for (j = 0; j < N; j++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=8
            if (i == j) {
                L[i][j] = 1.0;
            } else {
                L[i][j] = 0.0;
            }
            U[i][j] = 0.0;
        }
    }

    // Perform LU Decomposition
    for (k = 0; k < N; k++) {
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=1
        U[k][k] = A[k][k];
        for (i = k + 1; i < N; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=4
            L[i][k] = A[i][k] / U[k][k];
            U[k][i] = A[k][i];
        }
        for (i = k + 1; i < N; i++) {
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=1
            for (j = k + 1; j < N; j++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=4
                A[i][j] = A[i][j] - L[i][k] * U[k][j];
            }
        }
    }
}

// Top function name: lu_decomposition
