#include "atax.h"

void compute_Ax_tiled(DATA_TYPE A[N][N], DATA_TYPE x[N], DATA_TYPE temp[N]) {
    DATA_TYPE localA[TILE_SIZE][TILE_SIZE];
    DATA_TYPE localX[TILE_SIZE];
    #pragma HLS ARRAY_PARTITION variable=localA complete dim=2
    #pragma HLS ARRAY_PARTITION variable=localX complete dim=1

    for (int i = 0; i < N; i++) {
        temp[i] = 0;
    }

    for (int ii = 0; ii < N; ii += TILE_SIZE) {
        for (int jj = 0; jj < N; jj += TILE_SIZE) {
            // Load tile into local memory
            for (int i = 0; i < TILE_SIZE; i++) {
                for (int j = 0; j < TILE_SIZE; j++) {
                    localA[i][j] = A[ii + i][jj + j];
                }
            }
            for (int j = 0; j < TILE_SIZE; j++) {
                localX[j] = x[jj + j];
            }
            
            // Compute partial results
            for (int i = 0; i < TILE_SIZE; i++) {
                DATA_TYPE sum = 0;
                #pragma HLS PIPELINE II=1
                for (int j = 0; j < TILE_SIZE; j++) {
                    sum += localA[i][j] * localX[j];
                }
                temp[ii + i] += sum;
            }
        }
    }
}

void compute_AT_temp_tiled(DATA_TYPE A[N][N], DATA_TYPE temp[N], DATA_TYPE y_out[N]) {
    DATA_TYPE localAT[TILE_SIZE][TILE_SIZE];
    DATA_TYPE localTemp[TILE_SIZE];
    #pragma HLS ARRAY_PARTITION variable=localAT complete dim=1
    #pragma HLS ARRAY_PARTITION variable=localTemp complete dim=1

    for (int jj = 0; jj < N; jj += TILE_SIZE) {
        for (int ii = 0; ii < N; ii += TILE_SIZE) {
            // Load tile into local memory
            for (int i = 0; i < TILE_SIZE; i++) {
                for (int j = 0; j < TILE_SIZE; j++) {
                    localAT[i][j] = A[ii + i][jj + j];
                }
            }
            for (int i = 0; i < TILE_SIZE; i++) {
                localTemp[i] = temp[ii + i];
            }
            
            // Compute partial results
            for (int j = 0; j < TILE_SIZE; j++) {
                DATA_TYPE sum = 0;
                #pragma HLS PIPELINE II=1
                for (int i = 0; i < TILE_SIZE; i++) {
                    sum += localAT[i][j] * localTemp[i];
                }
                y_out[jj + j] += sum;
            }
        }
    }
}

void atax(DATA_TYPE A[N][N], DATA_TYPE x[N], DATA_TYPE y_out[N]) {
    #pragma HLS INTERFACE m_axi port=A offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=x offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=y_out offset=slave bundle=gmem
    #pragma HLS INTERFACE s_axilite port=A bundle=control
    #pragma HLS INTERFACE s_axilite port=x bundle=control
    #pragma HLS INTERFACE s_axilite port=y_out bundle=control
    #pragma HLS INTERFACE s_axilite port=return bundle=control

    DATA_TYPE temp[N] = {0};
    #pragma HLS ARRAY_PARTITION variable=temp cyclic factor=TILE_SIZE dim=1
    #pragma HLS ARRAY_PARTITION variable=y_out cyclic factor=TILE_SIZE dim=1

    // Initialize output array
    for (int i = 0; i < N; i++) {
        y_out[i] = 0;
    }

    compute_Ax_tiled(A, x, temp);
    compute_AT_temp_tiled(A, temp, y_out);
}