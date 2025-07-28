#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "atax.h"

#define TOLERANCE 1e-5

// Reference implementation of ATAX to compute y_ref = A^T * (A*x)
void reference_atax(DATA_TYPE A[N][N], DATA_TYPE x[N], DATA_TYPE y_ref[N]) {
    DATA_TYPE tmp1[N];
    // Compute tmp1 = A * x
    for (int i = 0; i < N; i++) {
        tmp1[i] = 0;
        for (int j = 0; j < N; j++) {
            tmp1[i] += A[i][j] * x[j];
        }
    }
    // Compute y_ref = A^T * tmp1
    for (int j = 0; j < N; j++) {
        y_ref[j] = 0;
        for (int i = 0; i < N; i++) {
            y_ref[j] += A[i][j] * tmp1[i];
        }
    }
}

int main() {
    DATA_TYPE A[N][N];
    DATA_TYPE x[N];
    DATA_TYPE y_out[N];
    DATA_TYPE y_ref[N];

    // Initialize the matrix A and vector x with test data.
    // For example, let A[i][j] = i+j and x[i] = i+1.
    for (int i = 0; i < N; i++) {
        x[i] = (DATA_TYPE)(i + 1);
        for (int j = 0; j < N; j++) {
            A[i][j] = (DATA_TYPE)(i + j);
        }
    }

    // Call the atax function to compute y_out.
    atax(A, x, y_out);

    // Compute the expected result using the reference implementation.
    reference_atax(A, x, y_ref);

    // Verify the results by comparing y_out with y_ref.
    int pass = 1;
    for (int i = 0; i < N; i++) {
        if (fabs(y_out[i] - y_ref[i]) > TOLERANCE) {
            pass = 0;
            break;
        }
    }

    // Print success or failure along with the computed values.
    if (pass) {
        printf("Test Passed!\n");
    } else {
        printf("Test Failed!\n");
        printf("Expected output:\n");
        for (int i = 0; i < N; i++) {
            printf("%f ", (float)y_ref[i]);
        }
        printf("\nObtained output:\n");
        for (int i = 0; i < N; i++) {
            printf("%f ", (float)y_out[i]);
        }
        printf("\n");
    }

    return 0;
}
