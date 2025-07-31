#include "atax.h"

void compute_Ax(DATA_TYPE A[N][N], DATA_TYPE x[N], DATA_TYPE temp[N]) {
    #pragma HLS INLINE
    for (int i = 0; i < N; i++) {
        #pragma HLS PIPELINE II=1
        temp[i] = 0;
        for (int j = 0; j < N; j++) {
            #pragma HLS UNROLL
            temp[i] += A[i][j] * x[j];
        }
    }
}

void compute_AT_temp(DATA_TYPE A[N][N], DATA_TYPE temp[N], DATA_TYPE y_out[N]) {
    #pragma HLS INLINE
    for (int i = 0; i < N; i++) {
        #pragma HLS PIPELINE II=1
        y_out[i] = 0;
        for (int j = 0; j < N; j++) {
            #pragma HLS UNROLL
            y_out[i] += A[j][i] * temp[j];
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

    DATA_TYPE temp[N];
    #pragma HLS ARRAY_PARTITION variable=temp complete dim=1
    #pragma HLS ARRAY_PARTITION variable=y_out complete dim=1

    compute_Ax(A, x, temp);
    compute_AT_temp(A, temp, y_out);
}