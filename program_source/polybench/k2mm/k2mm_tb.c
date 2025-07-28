#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "k2mm.h"

#define TOLERANCE 1e-5

void k2mm_ref(DATA_TYPE alpha, DATA_TYPE beta,
              DATA_TYPE A[N][N], DATA_TYPE B[N][N], DATA_TYPE C[N][N],
              DATA_TYPE D[N][N], DATA_TYPE E_ref[N][N])
{
    DATA_TYPE tmp1[N][N];
    DATA_TYPE tmp2[N][N];

    // Compute tmp1 = A * B
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            tmp1[i][j] = 0;
            for (int k = 0; k < N; k++) {
                tmp1[i][j] += A[i][k] * B[k][j];
            }
            // Multiply by alpha while accumulating later
            tmp1[i][j] = alpha * tmp1[i][j];
        }
    }

    // Compute tmp2 = tmp1 * C
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            tmp2[i][j] = 0;
            for (int k = 0; k < N; k++) {
                tmp2[i][j] += tmp1[i][k] * C[k][j];
            }
        }
    }

    // Compute final output: E_ref = tmp2 + beta * D
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            E_ref[i][j] = tmp2[i][j] + beta * D[i][j];
        }
    }
}

int main() {
    DATA_TYPE A[N][N], B[N][N], C[N][N], D[N][N];
    DATA_TYPE E_out[N][N], E_ref[N][N];

    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            A[i][j] = (DATA_TYPE)(i + j);
            B[i][j] = (DATA_TYPE)(i - j);
            C[i][j] = (DATA_TYPE)(i + j + 1);
            D[i][j] = (DATA_TYPE)(i * j);
        }
    }

    // Define scalars for the operation.
    DATA_TYPE alpha = 2.0;
    DATA_TYPE beta  = 3.0;

    // Call the accelerator function.
    k2mm(alpha, beta, A, B, C, D, E_out);

    // Compute the expected output using the reference implementation.
    k2mm_ref(alpha, beta, A, B, C, D, E_ref);

    // Verify the results element by element.
    int pass = 1;
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            if (fabs(E_out[i][j] - E_ref[i][j]) > TOLERANCE) {
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
        printf("Expected output (E_ref):\n");
        for (int i = 0; i < N; i++) {
            for (int j = 0; j < N; j++) {
                printf("%f ", (double)E_ref[i][j]);
            }
            printf("\n");
        }
        printf("Obtained output (E_out):\n");
        for (int i = 0; i < N; i++) {
            for (int j = 0; j < N; j++) {
                printf("%f ", (double)E_out[i][j]);
            }
            printf("\n");
        }
    }

    return 0;
}
