#include <ap_fixed.h>
#include <hls_math.h>

#define MAX_N 32

// LU decomposition & determinant
float det(float A[MAX_N][MAX_N], int n) {
    float L[MAX_N][MAX_N], U[MAX_N][MAX_N];
#pragma HLS ARRAY_PARTITION variable=L complete dim=2
#pragma HLS ARRAY_PARTITION variable=U complete dim=1

    // Initialize
    init_outer: for (int i = 0; i < n; i++) {
    #pragma HLS PIPELINE II=1
        for (int j = 0; j < n; j++) {
    #pragma HLS PIPELINE II=1
            if (i <= j) { U[i][j] = A[i][j]; L[i][j] = (i==j); }
            else       { U[i][j] = 0;     L[i][j] = 0;      }
        }
    }
    // Factorization
    for (int k = 0; k < n; k++) {
        for (int i = k+1; i < n; i++) {
        #pragma HLS PIPELINE II=1
            float factor = U[i][k] / U[k][k];
            L[i][k] = factor;
            for (int j = k; j < n; j++) {
            #pragma HLS PIPELINE II=1
                U[i][j] -= factor * U[k][j];
            }
        }
    }
    // Determinant = product of U diagonal
    float detA = 1.0f;
    diag_mul: for (int i = 0; i < n; i++) {
    #pragma HLS PIPELINE II=1
        detA *= U[i][i];
    }
    return detA;
}
