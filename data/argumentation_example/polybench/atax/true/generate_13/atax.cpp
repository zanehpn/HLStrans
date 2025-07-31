#include "atax.h"

void compute_tmp(DATA_TYPE A[N][N], DATA_TYPE x[N], DATA_TYPE tmp[N]) {
    #pragma HLS INLINE off
    for (int i = 0; i < N; i++) {
        #pragma HLS PIPELINE II=1
        tmp[i] = 0;
        for (int j = 0; j < N; j++) {
            #pragma HLS UNROLL factor=UNROLL_FACTOR
            tmp[i] += A[i][j] * x[j];
        }
    }
}

void compute_y_out(DATA_TYPE A[N][N], DATA_TYPE tmp[N], DATA_TYPE y_out[N]) {
    #pragma HLS INLINE off
    for (int j = 0; j < N; j++) {
        #pragma HLS PIPELINE II=1
        y_out[j] = 0;
        for (int i = 0; i < N; i++) {
            #pragma HLS UNROLL factor=UNROLL_FACTOR
            y_out[j] += A[i][j] * tmp[i];
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

    DATA_TYPE tmp[N];

    #pragma HLS ARRAY_PARTITION variable=A cyclic factor=UNROLL_FACTOR dim=2
    #pragma HLS ARRAY_PARTITION variable=x cyclic factor=UNROLL_FACTOR
    #pragma HLS ARRAY_PARTITION variable=tmp cyclic factor=UNROLL_FACTOR
    #pragma HLS ARRAY_PARTITION variable=y_out cyclic factor=UNROLL_FACTOR

    compute_tmp(A, x, tmp);
    compute_y_out(A, tmp, y_out);
}