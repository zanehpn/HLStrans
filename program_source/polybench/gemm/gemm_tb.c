#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "gemm.h"

#define TOLERANCE 1e-5

// Declaration of the gemm accelerator function
void gemm(DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE A[N][N], DATA_TYPE B[N][N], DATA_TYPE C[N][N], DATA_TYPE D_out[N][N]);

// Reference implementation for GEMM:
// Computes D_ref = beta * C + alpha * (A * B)
void gemm_ref(DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE A[N][N], DATA_TYPE B[N][N], DATA_TYPE C[N][N], DATA_TYPE D_ref[N][N])
{
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            DATA_TYPE tmp = 0;
            for (int k = 0; k < N; k++) {
                tmp += A[i][k] * B[k][j];
            }
            D_ref[i][j] = beta * C[i][j] + alpha * tmp;
        }
    }
}

int main() {
    DATA_TYPE A[N][N], B[N][N], C[N][N];
    DATA_TYPE D_out[N][N], D_ref[N][N];
    
    // Initialize matrices with test data.
    // Example: A[i][j] = i + j, B[i][j] = i - j, C[i][j] = i * j.
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            A[i][j] = (DATA_TYPE)(i + j);
            B[i][j] = (DATA_TYPE)(i - j);
            C[i][j] = (DATA_TYPE)(i * j);
        }
    }
    
    // Define scalar parameters for the GEMM operation.
    DATA_TYPE alpha = 2.0;
    DATA_TYPE beta  = 3.0;
    
    // Call the accelerator implementation.
    gemm(alpha, beta, A, B, C, D_out);
    
    // Compute the expected result using the reference implementation.
    gemm_ref(alpha, beta, A, B, C, D_ref);
    
    // Verify the results element by element.
    int pass = 1;
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            if (fabs(D_out[i][j] - D_ref[i][j]) > TOLERANCE) {
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
        printf("Expected result:\n");
        for (int i = 0; i < N; i++) {
            for (int j = 0; j < N; j++) {
                printf("%f ", D_ref[i][j]);
            }
            printf("\n");
        }
        printf("Obtained result:\n");
        for (int i = 0; i < N; i++) {
            for (int j = 0; j < N; j++) {
                printf("%f ", D_out[i][j]);
            }
            printf("\n");
        }
    }
    
    return 0;
}
