#include "atax.h"

void compute_tmp(DATA_TYPE A[N][N], DATA_TYPE x[N], DATA_TYPE tmp[N]) {
    #pragma HLS INLINE off

    DATA_TYPE localA[TILE_SIZE][TILE_SIZE];
    DATA_TYPE localX[TILE_SIZE];

    for (int i = 0; i < N; i++) {
        tmp[i] = 0;
    }

    for (int ii = 0; ii < N; ii += TILE_SIZE) {
        for (int jj = 0; jj < N; jj += TILE_SIZE) {
            #pragma HLS PIPELINE II=1
            #pragma HLS UNROLL factor=UNROLL_FACTOR
            for (int i = 0; i < TILE_SIZE; i++) {
                for (int j = 0; j < TILE_SIZE; j++) {
                    localA[i][j] = A[ii + i][jj + j];
                }
            }
            
            for (int j = 0; j < TILE_SIZE; j++) {
                localX[j] = x[jj + j];
            }

            for (int i = 0; i < TILE_SIZE; i++) {
                for (int j = 0; j < TILE_SIZE; j++) {
                    tmp[ii + i] += localA[i][j] * localX[j];
                }
            }
        }
    }
}

void atax(DATA_TYPE A[N][N], DATA_TYPE x[N], DATA_TYPE y_out[N]) {
    DATA_TYPE tmp[N];
    
    compute_tmp(A, x, tmp);
    
    for (int i = 0; i < N; i++) {
        y_out[i] = 0;
    }

    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            y_out[j] += A[i][j] * tmp[i];
        }
    }
}