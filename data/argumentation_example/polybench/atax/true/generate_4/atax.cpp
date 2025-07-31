#include "atax.h"

void atax(DATA_TYPE A[N][N], DATA_TYPE x[N], DATA_TYPE y_out[N]) {
    #pragma HLS INTERFACE m_axi port=A offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=x offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=y_out offset=slave bundle=gmem
    #pragma HLS INTERFACE s_axilite port=A bundle=control
    #pragma HLS INTERFACE s_axilite port=x bundle=control
    #pragma HLS INTERFACE s_axilite port=y_out bundle=control
    #pragma HLS INTERFACE s_axilite port=return bundle=control

    DATA_TYPE temp[N] = {0};
    #pragma HLS ARRAY_PARTITION variable=temp complete dim=1
    #pragma HLS ARRAY_PARTITION variable=y_out complete dim=1

    // Compute A*x
    for (int i = 0; i < N; i++) {
        #pragma HLS PIPELINE
        temp[i] = 0;
        for (int j = 0; j < N; j++) {
            #pragma HLS UNROLL
            temp[i] += A[i][j] * x[j];
        }
    }

    // Compute A^T * temp
    for (int i = 0; i < N; i++) {
        #pragma HLS PIPELINE
        y_out[i] = 0;
        for (int j = 0; j < N; j++) {
            #pragma HLS UNROLL
            y_out[i] += A[j][i] * temp[j];
        }
    }
}