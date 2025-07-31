#include "atax.h"

void atax(DATA_TYPE A[N][N], DATA_TYPE x[N], DATA_TYPE y_out[N]) {
    #pragma HLS INTERFACE m_axi port=A offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=x offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=y_out offset=slave bundle=gmem
    #pragma HLS INTERFACE s_axilite port=A bundle=control
    #pragma HLS INTERFACE s_axilite port=x bundle=control
    #pragma HLS INTERFACE s_axilite port=y_out bundle=control
    #pragma HLS INTERFACE s_axilite port=return bundle=control

    DATA_TYPE tmp[N] = {0};

    #pragma HLS ARRAY_PARTITION variable=A cyclic factor=UNROLL_FACTOR dim=2
    #pragma HLS ARRAY_PARTITION variable=x cyclic factor=UNROLL_FACTOR
    #pragma HLS ARRAY_PARTITION variable=tmp cyclic factor=UNROLL_FACTOR
    #pragma HLS ARRAY_PARTITION variable=y_out cyclic factor=UNROLL_FACTOR

    // Compute tmp = A * x
    for (int i = 0; i < N; i++) {
        #pragma HLS PIPELINE II=1
        for (int j = 0; j < N; j++) {
            tmp[i] += A[i][j] * x[j];
        }
    }

    // Compute y_out = A^T * tmp
    for (int j = 0; j < N; j++) {
        #pragma HLS PIPELINE II=1
        y_out[j] = 0;
        for (int i = 0; i < N; i++) {
            y_out[j] += A[i][j] * tmp[i];
        }
    }
}