#include "gesummv.h"

void gesummv(DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE A[N][N], DATA_TYPE B[N][N], DATA_TYPE x[N], DATA_TYPE y_out[N]) {
    #pragma HLS DATAFLOW

    // Local buffers with partition pragmas
    DATA_TYPE buff_A[N][N];
    DATA_TYPE buff_B[N][N];
    DATA_TYPE buff_x[N];
    DATA_TYPE tmp1[N];
    DATA_TYPE tmp2[N];

    // Partition arrays to improve memory access
    #pragma HLS ARRAY_PARTITION variable=buff_A complete dim=2
    #pragma HLS ARRAY_PARTITION variable=buff_B complete dim=2
    #pragma HLS ARRAY_PARTITION variable=buff_x complete dim=1
    #pragma HLS ARRAY_PARTITION variable=tmp1 complete dim=1
    #pragma HLS ARRAY_PARTITION variable=tmp2 complete dim=1

    // Stage 1: Load data
    for (int i = 0; i < N; i++) {
        #pragma HLS PIPELINE II=1
        buff_x[i] = x[i];
        for (int j = 0; j < N; j++) {
            #pragma HLS PIPELINE II=1
            buff_A[i][j] = A[i][j];
            buff_B[i][j] = B[i][j];
        }
    }

    // Stage 2: Compute tmp1 and tmp2
    for (int i = 0; i < N; i++) {
        #pragma HLS PIPELINE II=1
        tmp1[i] = 0;
        tmp2[i] = 0;
        for (int j = 0; j < N; j++) {
            #pragma HLS PIPELINE II=1
            tmp1[i] += alpha * buff_A[i][j] * buff_x[j];
            tmp2[i] += beta * buff_B[i][j] * buff_x[j];
        }
    }

    // Stage 3: Compute y_out
    for (int i = 0; i < N; i++) {
        #pragma HLS PIPELINE II=1
        y_out[i] = tmp1[i] + tmp2[i];
    }
}