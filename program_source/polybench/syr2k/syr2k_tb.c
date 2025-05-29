#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "syr2k.h"

#define TOLERANCE 1e-5

// Reference implementation for SYR2K.
// Computes D_ref[i][j] = (alpha * sum_{k} A[i][k]*B[j][k] + alpha * sum_{k} B[i][k]*A[j][k] + beta * C[i][j])
// for j <= i, and D_ref[i][j] = 0 for j > i.
void syr2k_ref(DATA_TYPE alpha, DATA_TYPE beta,
               DATA_TYPE A[N][N], DATA_TYPE B[N][N], DATA_TYPE C[N][N],
               DATA_TYPE D_ref[N][N])
{
    int i, j, k;
    DATA_TYPE tmp1, tmp2;

    for (i = 0; i < N; i++) {
        for (j = 0; j < N; j++) {
            if(j > i) {
                D_ref[i][j] = 0;
            } else {
                tmp1 = 0;
                tmp2 = 0;
                for (k = 0; k < N; k++) {
                    tmp1 += A[i][k] * B[j][k];
                    tmp2 += B[i][k] * A[j][k];
                }
                D_ref[i][j] = alpha * (tmp1 + tmp2) + beta * C[i][j];
            }
        }
    }
}

int main() {
    int i, j;
    DATA_TYPE A[N][N], B[N][N], C[N][N];
    DATA_TYPE D_out[N][N], D_ref[N][N];

    // Initialize test data.
    // For example, let:
    //   A[i][j] = i + j,
    //   B[i][j] = i - j,
    //   C[i][j] = i * j.
    for (i = 0; i < N; i++) {
        for (j = 0; j < N; j++) {
            A[i][j] = (DATA_TYPE)(i + j);
            B[i][j] = (DATA_TYPE)(i - j);
            C[i][j] = (DATA_TYPE)(i * j);
        }
    }

    // Define scalars.
    DATA_TYPE alpha = 2.0;
    DATA_TYPE beta  = 3.0;

    // Compute the expected result.
    syr2k_ref(alpha, beta, A, B, C, D_ref);

    // Call the accelerator (or synthesized) function.
    syr2k(alpha, beta, A, B, C, D_out);

    // Verify the results element-by-element.
    int pass = 1;
    for (i = 0; i < N; i++) {
        for (j = 0; j < N; j++) {
            if (fabs((double)D_out[i][j] - (double)D_ref[i][j]) > TOLERANCE) {
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
        printf("Expected output (D_ref):\n");
        for (i = 0; i < N; i++) {
            for (j = 0; j < N; j++) {
                printf("%f ", (double)D_ref[i][j]);
            }
            printf("\n");
        }
        printf("Obtained output (D_out):\n");
        for (i = 0; i < N; i++) {
            for (j = 0; j < N; j++) {
                printf("%f ", (double)D_out[i][j]);
            }
            printf("\n");
        }
    }

    return 0;
}
