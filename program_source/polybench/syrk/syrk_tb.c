#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "syrk.h"

#define TOLERANCE 1e-5

// Reference implementation for SYRK.
// Computes for each i, j: if (j > i) then C_ref[i][j] = 0,
// else C_ref[i][j] = alpha * (sum over k of A[i][k] * A[j][k]) + beta * B[i][j]
void syrk_ref(DATA_TYPE alpha, DATA_TYPE beta,
              DATA_TYPE A[N][N], DATA_TYPE B[N][N],
              DATA_TYPE C_ref[N][N])
{
    int i, j, k;
    for (i = 0; i < N; i++) {
        for (j = 0; j < N; j++) {
            if (j > i) {
                C_ref[i][j] = 0;
            } else {
                DATA_TYPE sum = 0;
                for (k = 0; k < N; k++) {
                    sum += A[i][k] * A[j][k];
                }
                C_ref[i][j] = alpha * sum + beta * B[i][j];
            }
        }
    }
}

int main() {
    int i, j;
    DATA_TYPE A[N][N], B[N][N];
    DATA_TYPE C_out[N][N], C_ref[N][N];

    // Initialize test data.
    // For this example, we define:
    //   A[i][j] = i + j,
    //   B[i][j] = i - j.
    for (i = 0; i < N; i++) {
        for (j = 0; j < N; j++) {
            A[i][j] = (DATA_TYPE)(i + j);
            B[i][j] = (DATA_TYPE)(i - j);
        }
    }

    // Define scalar parameters.
    DATA_TYPE alpha = 2.0;
    DATA_TYPE beta  = 3.0;

    // Compute the expected output using the reference implementation.
    syrk_ref(alpha, beta, A, B, C_ref);

    // Call the systolic kernel function.
    syrk(alpha, beta, A, B, C_out);

    // Verify the results by comparing element-by-element.
    int pass = 1;
    for (i = 0; i < N; i++) {
        for (j = 0; j < N; j++) {
            if (fabs((double)C_out[i][j] - (double)C_ref[i][j]) > TOLERANCE) {
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
        printf("Expected output (C_ref):\n");
        for (i = 0; i < N; i++) {
            for (j = 0; j < N; j++) {
                printf("%f ", (double)C_ref[i][j]);
            }
            printf("\n");
        }
        printf("Obtained output (C_out):\n");
        for (i = 0; i < N; i++) {
            for (j = 0; j < N; j++) {
                printf("%f ", (double)C_out[i][j]);
            }
            printf("\n");
        }
    }

    return 0;
}
