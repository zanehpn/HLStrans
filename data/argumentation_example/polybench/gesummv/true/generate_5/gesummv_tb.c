#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "gesummv.h"

#define TOLERANCE 1e-5

// Reference implementation for gesummv:
// Computes y_ref[i] = alpha * sum_j (A[i][j] * x[j]) + beta * sum_j (B[i][j] * x[j])
void gesummv_ref(DATA_TYPE alpha, DATA_TYPE beta,
                 DATA_TYPE A[N][N], DATA_TYPE B[N][N],
                 DATA_TYPE x[N], DATA_TYPE y_ref[N])
{
    for (int i = 0; i < N; i++) {
        DATA_TYPE tmp1 = 0;
        DATA_TYPE tmp2 = 0;
        for (int j = 0; j < N; j++) {
            tmp1 += A[i][j] * x[j];
            tmp2 += B[i][j] * x[j];
        }
        y_ref[i] = alpha * tmp1 + beta * tmp2;
    }
}

int main() {
    DATA_TYPE A[N][N];
    DATA_TYPE B[N][N];
    DATA_TYPE x[N];
    DATA_TYPE y_out[N];
    DATA_TYPE y_ref[N];

    // Initialize matrices and vector with test data.
    // For example:
    //   A[i][j] = i + j, B[i][j] = i - j, and x[i] = i + 1.
    for (int i = 0; i < N; i++) {
        x[i] = (DATA_TYPE)(i + 1);
        for (int j = 0; j < N; j++) {
            A[i][j] = (DATA_TYPE)(i + j);
            B[i][j] = (DATA_TYPE)(i - j);
        }
    }

    // Define scalar parameters.
    DATA_TYPE alpha = 2.0;
    DATA_TYPE beta  = 3.0;

    // Call the accelerator (or synthesized) gesummv function.
    gesummv(alpha, beta, A, B, x, y_out);

    // Compute the expected output using the reference implementation.
    gesummv_ref(alpha, beta, A, B, x, y_ref);

    // Verify the results by comparing element-by-element.
    int pass = 1;
    for (int i = 0; i < N; i++) {
        if (fabs((double)y_out[i] - (double)y_ref[i]) > TOLERANCE) {
            pass = 0;
            break;
        }
    }

    // Print the test result.
    if (pass) {
        printf("Test Passed!\n");
    } else {
        printf("Test Failed!\n");
        printf("Expected output:\n");
        for (int i = 0; i < N; i++) {
            printf("%f ", (double)y_ref[i]);
        }
        printf("\nObtained output:\n");
        for (int i = 0; i < N; i++) {
            printf("%f ", (double)y_out[i]);
        }
        printf("\n");
    }

    return 0;
}
