// Converted from cholesky_decomposition_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: cholesky_decomposition.cpp ----
#include <cmath>

#define MATRIX_SIZE 1024

void cholesky_decomposition(double A[MATRIX_SIZE][MATRIX_SIZE], double L[MATRIX_SIZE][MATRIX_SIZE]) {

    for (int i = 0; i < MATRIX_SIZE; i++) {

        for (int j = 0; j <= i; j++) {

            double sum = 0.0;
            for (int k = 0; k < j; k++) {

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
