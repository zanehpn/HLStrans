#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "k3mm.h"

#define TOLERANCE 1e-5

// Reference implementation: simple matrix multiplication
// Computes X = Y * Z for N x N matrices.
void matrix_mult(DATA_TYPE Y[N][N], DATA_TYPE Z[N][N], DATA_TYPE X[N][N]) {
    int i, j, k;
    for (i = 0; i < N; i++) {
        for (j = 0; j < N; j++) {
            DATA_TYPE sum = 0;
            for (k = 0; k < N; k++) {
                sum += Y[i][k] * Z[k][j];
            }
            X[i][j] = sum;
        }
    }
}

// Reference implementation of k3mm.
// Computes E_ref = (A * B) * (C * D)
void k3mm_ref(DATA_TYPE A[N][N], DATA_TYPE B[N][N],
              DATA_TYPE C[N][N], DATA_TYPE D[N][N],
              DATA_TYPE E_ref[N][N]) {
    DATA_TYPE tmp1[N][N];
    DATA_TYPE tmp2[N][N];

    // Compute tmp1 = A * B
    matrix_mult(A, B, tmp1);
    // Compute tmp2 = C * D
    matrix_mult(C, D, tmp2);
    // Compute E_ref = tmp1 * tmp2
    matrix_mult(tmp1, tmp2, E_ref);
}

int main() {
    int i, j;
    DATA_TYPE A[N][N], B[N][N], C[N][N], D[N][N];
    DATA_TYPE E_out[N][N], E_ref[N][N];

    // Initialize test matrices with known patterns.
    // For example, we can use:
    //   A[i][j] = i + j
    //   B[i][j] = i - j
    //   C[i][j] = i * j
    //   D[i][j] = i + 2*j
    for (i = 0; i < N; i++) {
        for (j = 0; j < N; j++) {
            A[i][j] = (DATA_TYPE)(i + j);
            B[i][j] = (DATA_TYPE)(i - j);
            C[i][j] = (DATA_TYPE)(i * j);
            D[i][j] = (DATA_TYPE)(i + 2 * j);
        }
    }

    // Call the k3mm accelerator function.
    k3mm(A, B, C, D, E_out);

    // Compute the expected result using the reference implementation.
    k3mm_ref(A, B, C, D, E_ref);

    // Verify the results element by element.
    int pass = 1;
    for (i = 0; i < N; i++) {
        for (j = 0; j < N; j++) {
            if (fabs((double)E_out[i][j] - (double)E_ref[i][j]) > TOLERANCE) {
                pass = 0;
                break;
            }
        }
        if (!pass)
            break;
    }

    // Print the test result.
    if (pass) {
        printf("Test Passed!\n");
    } else {
        printf("Test Failed!\n");
        printf("Expected Output (E_ref):\n");
        for (i = 0; i < N; i++) {
            for (j = 0; j < N; j++) {
                printf("%f ", (double)E_ref[i][j]);
            }
            printf("\n");
        }
        printf("Obtained Output (E_out):\n");
        for (i = 0; i < N; i++) {
            for (j = 0; j < N; j++) {
                printf("%f ", (double)E_out[i][j]);
            }
            printf("\n");
        }
    }
    return 0;
}
