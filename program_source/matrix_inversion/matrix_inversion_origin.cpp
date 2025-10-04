// Converted from matrix_inversion_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: matrix_inversion.cpp ----
#include <cmath>
#include <cstring>

#define MATRIX_SIZE 1024

void matrix_inversion(float A[MATRIX_SIZE][MATRIX_SIZE], float A_inv[MATRIX_SIZE][MATRIX_SIZE]) {

    int i, j, k;
    float temp;

    // Initialize A_inv to identity matrix
    for (i = 0; i < MATRIX_SIZE; i++) {

        for (j = 0; j < MATRIX_SIZE; j++) {

            if (i == j) {
                A_inv[i][j] = 1.0;
            } else {
                A_inv[i][j] = 0.0;
            }
        }
    }

    // Perform Gaussian elimination
    for (i = 0; i < MATRIX_SIZE; i++) {

        temp = A[i][i];
        for (j = 0; j < MATRIX_SIZE; j++) {

            A[i][j] /= temp;
            A_inv[i][j] /= temp;
        }
        for (j = 0; j < MATRIX_SIZE; j++) {

            if (i != j) {
                temp = A[j][i];
                for (k = 0; k < MATRIX_SIZE; k++) {

                    A[j][k] -= A[i][k] * temp;
                    A_inv[j][k] -= A_inv[i][k] * temp;
                }
            }
        }
    }
}

// Top function name: matrix_inversion
