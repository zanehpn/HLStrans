// Converted from lu_decomposition_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: lu_decomposition.cpp ----
#include <cmath>

#define N 1024

void lu_decomposition(double A[N][N], double L[N][N], double U[N][N]) {

    int i, j, k;

    // Initialize L and U matrices
    for (i = 0; i < N; i++) {

        for (j = 0; j < N; j++) {

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

        U[k][k] = A[k][k];
        for (i = k + 1; i < N; i++) {

            L[i][k] = A[i][k] / U[k][k];
            U[k][i] = A[k][i];
        }
        for (i = k + 1; i < N; i++) {

            for (j = k + 1; j < N; j++) {

                A[i][j] = A[i][j] - L[i][k] * U[k][j];
            }
        }
    }
}

// Top function name: lu_decomposition
