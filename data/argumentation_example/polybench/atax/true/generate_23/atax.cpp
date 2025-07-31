#include "atax.h"

void compute_tmp1(DATA_TYPE A[N][N], DATA_TYPE x[N], DATA_TYPE tmp1[N]) {
    #pragma HLS INLINE
    for (int i = 0; i < N; i++) {
        #pragma HLS PIPELINE II=1
        DATA_TYPE sum = 0;
        for (int j = 0; j < N; j++) {
            #pragma HLS UNROLL factor=8
            sum += A[i][j] * x[j];
        }
        tmp1[i] = sum;
    }
}

void compute_y_out(DATA_TYPE A[N][N], DATA_TYPE tmp1[N], DATA_TYPE y_out[N]) {
    #pragma HLS INLINE
    for (int j = 0; j < N; j++) {
        #pragma HLS PIPELINE II=1
        DATA_TYPE sum = 0;
        for (int i = 0; i < N; i++) {
            #pragma HLS UNROLL factor=8
            sum += A[i][j] * tmp1[i];
        }
        y_out[j] = sum;
    }
}

void atax(DATA_TYPE A[N][N], DATA_TYPE x[N], DATA_TYPE y_out[N]) {
    #pragma HLS INTERFACE m_axi port=A offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=x offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=y_out offset=slave bundle=gmem
    #pragma HLS INTERFACE s_axilite port=return bundle=control

    DATA_TYPE buff_A[N][N];
    #pragma HLS ARRAY_PARTITION variable=buff_A cyclic factor=8 dim=2
    DATA_TYPE buff_x[N];
    #pragma HLS ARRAY_PARTITION variable=buff_x cyclic factor=8
    DATA_TYPE buff_y_out[N];
    #pragma HLS ARRAY_PARTITION variable=buff_y_out cyclic factor=8
    DATA_TYPE tmp1[N];
    #pragma HLS ARRAY_PARTITION variable=tmp1 cyclic factor=8

    // Load input data
    #pragma HLS LOOP_MERGE
    for (int i = 0; i < N; i++) {
        #pragma HLS PIPELINE II=1
        buff_x[i] = x[i];
        for (int j = 0; j < N; j++) {
            buff_A[i][j] = A[i][j];
        }
    }

    // Compute tmp1 and y_out
    compute_tmp1(buff_A, buff_x, tmp1);
    compute_y_out(buff_A, tmp1, buff_y_out);

    // Store output data
    for (int i = 0; i < N; i++) {
        #pragma HLS PIPELINE II=1
        y_out[i] = buff_y_out[i];
    }
}