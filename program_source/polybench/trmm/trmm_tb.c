#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

#define M 60
#define K 60
#define N 80
#define EPS 1e-8

/* Kernel under test */
void trmm(double alpha, double A[M][K], double B[M][N]);

/* Initialize A as upper triangular, B with a simple ramp */
static void init_matrices(double A[M][K], double B[M][N]) {
    for (int i = 0; i < M; i++) {
        for (int j = 0; j < K; j++) {
            /* Only fill j>=i; lower part is unused */
            A[i][j] = (j >= i) ? (double)(1 + i + j) : 0.0;
        }
        for (int j = 0; j < N; j++) {
            B[i][j] = (double)(i * N + j);
        }
    }
}

/* Reference trmm: B_ref[i][j] = alpha * (B[i][j] + sum_{k>i} A[k][i]*B[k][j]) */
static void reference_trmm(double alpha, double A[M][K], double B_ref[M][N]) {
    for (int i = 0; i < M; i++) {
        for (int j = 0; j < N; j++) {
            double sum = B_ref[i][j];
            for (int k = i+1; k < K; k++) {
                sum += A[k][i] * B_ref[k][j];
            }
            B_ref[i][j] = alpha * sum;
        }
    }
}

int main(void) {
    double A[M][K], B[M][N], B_ref[M][N];
    int errors = 0;

    /* 1) Initialize */
    init_matrices(A, B);
    memcpy(B_ref, B, sizeof(B));

    /* 2) Run DUT */
    trmm(2.5, A, B);

    /* 3) Run reference */
    reference_trmm(2.5, A, B_ref);

    /* 4) Compare */
    for (int i = 0; i < M; i++) {
        for (int j = 0; j < N; j++) {
            double diff = fabs(B[i][j] - B_ref[i][j]);
            if (diff > EPS) {
                if (errors < 10) {
                    printf("Mismatch at B[%d][%d]: got %.6f, ref %.6f (diff %.2e)\n",
                           i, j, B[i][j], B_ref[i][j], diff);
                }
                errors++;
            }
        }
    }

    /* 5) Report */
    if (errors == 0) {
        printf("TEST PASSED: all values match within tolerance %.1e\n", EPS);
        return 0;
    } else {
        printf("TEST FAILED: %d mismatches found\n", errors);
        return 1;
    }
}
