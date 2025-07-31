#include <stdio.h>
#include "bicg.h"

// Reference implementation for BICG
// Computes s_ref[j] = sum_{i=0}^{N-1} A[i][j] * r[i]
// and  q_ref[i] = sum_{j=0}^{N-1} A[i][j] * p[j]
void reference_bicg(DATA_TYPE A[N][N], DATA_TYPE p[N], DATA_TYPE r[N],
                    DATA_TYPE s_ref[N], DATA_TYPE q_ref[N])
{
    // Initialize outputs to 0
    for (int i = 0; i < N; i++) {
        s_ref[i] = 0;
        q_ref[i] = 0;
    }
    
    // Compute s_ref[j] = sum over i of A[i][j] * r[i]
    for (int j = 0; j < N; j++) {
        for (int i = 0; i < N; i++) {
            s_ref[j] += A[i][j] * r[i];
        }
    }
    
    // Compute q_ref[i] = sum over j of A[i][j] * p[j]
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            q_ref[i] += A[i][j] * p[j];
        }
    }
}

int main() {
    // Declare matrices and vectors.
    DATA_TYPE A[N][N];
    DATA_TYPE p[N];
    DATA_TYPE r[N];
    DATA_TYPE s_out[N];
    DATA_TYPE q_out[N];
    DATA_TYPE s_ref[N];
    DATA_TYPE q_ref[N];

    // Initialize test data.
    // For this example, fill A with (i+j), p with (i+1), and r with 1.
    for (int i = 0; i < N; i++) {
        p[i] = (DATA_TYPE)(i + 1);
        r[i] = (DATA_TYPE)1;
        for (int j = 0; j < N; j++) {
            A[i][j] = (DATA_TYPE)(i + j);
        }
    }

    // Compute expected outputs using the reference implementation.
    reference_bicg(A, p, r, s_ref, q_ref);

    // Call the bicg accelerator function.
    bicg(A, p, r, s_out, q_out);

    // Verify the results.
    int pass = 1;
    for (int i = 0; i < N; i++) {
        if (s_out[i] != s_ref[i]) {
            pass = 0;
        }
        if (q_out[i] != q_ref[i]) {
            pass = 0;
        }
    }

    // Print results.
    if (pass) {
        printf("Test Passed!\n");
    } else {
        printf("Test Failed!\n");
        printf("Expected s_ref: ");
        for (int i = 0; i < N; i++) {
            printf("%d ", s_ref[i]);
        }
        printf("\nObtained s_out: ");
        for (int i = 0; i < N; i++) {
            printf("%d ", s_out[i]);
        }
        printf("\nExpected q_ref: ");
        for (int i = 0; i < N; i++) {
            printf("%d ", q_ref[i]);
        }
        printf("\nObtained q_out: ");
        for (int i = 0; i < N; i++) {
            printf("%d ", q_out[i]);
        }
        printf("\n");
    }

    return 0;
}
