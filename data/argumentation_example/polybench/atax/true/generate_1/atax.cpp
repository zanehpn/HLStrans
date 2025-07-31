#include "atax.h"

void compute_y(DATA_TYPE A[N][N], DATA_TYPE x[N], DATA_TYPE y[N]) {
    DATA_TYPE y_local[N];

    #pragma HLS ARRAY_PARTITION variable=A cyclic factor=PARTITION_FACTOR dim=2
    #pragma HLS ARRAY_PARTITION variable=x cyclic factor=PARTITION_FACTOR
    #pragma HLS ARRAY_PARTITION variable=y_local cyclic factor=PARTITION_FACTOR

    for (int i = 0; i < N; i++) {
        y_local[i] = 0;
        for (int j = 0; j < N; j++) {
            #pragma HLS UNROLL factor=PARTITION_FACTOR
            y_local[i] += A[i][j] * x[j];
        }
        y[i] = y_local[i];
    }
}

void compute_y_out(DATA_TYPE A[N][N], DATA_TYPE y[N], DATA_TYPE y_out[N]) {
    DATA_TYPE y_out_local[N];

    #pragma HLS ARRAY_PARTITION variable=A cyclic factor=PARTITION_FACTOR dim=1
    #pragma HLS ARRAY_PARTITION variable=y cyclic factor=PARTITION_FACTOR
    #pragma HLS ARRAY_PARTITION variable=y_out_local cyclic factor=PARTITION_FACTOR

    for (int j = 0; j < N; j++) {
        y_out_local[j] = 0;
        for (int i = 0; i < N; i++) {
            #pragma HLS UNROLL factor=PARTITION_FACTOR
            y_out_local[j] += A[i][j] * y[i];
        }
        y_out[j] = y_out_local[j];
    }
}

void atax(DATA_TYPE A[N][N], DATA_TYPE x[N], DATA_TYPE y_out[N]) {
    DATA_TYPE y[N];

    #pragma HLS DATAFLOW
    #pragma HLS STREAM variable=y depth=2

    compute_y(A, x, y);
    compute_y_out(A, y, y_out);
}