#include "gesummv.h"

void matrix_vector_mul(DATA_TYPE alpha, DATA_TYPE A[N][N], DATA_TYPE x[N], DATA_TYPE tmp[N]) {
    #pragma HLS INLINE
    for (int i = 0; i < N; i++) {
        #pragma HLS PIPELINE II=1
        tmp[i] = 0;
        for (int j = 0; j < N; j++) {
            #pragma HLS UNROLL factor=16
            tmp[i] += alpha * A[i][j] * x[j];
        }
    }
}

void vector_add(DATA_TYPE tmp1[N], DATA_TYPE tmp2[N], DATA_TYPE y_out[N]) {
    #pragma HLS INLINE
    for (int i = 0; i < N; i++) {
        #pragma HLS PIPELINE II=1
        y_out[i] = tmp1[i] + tmp2[i];
    }
}

void gesummv(DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE A[N][N], DATA_TYPE B[N][N], DATA_TYPE x[N], DATA_TYPE y_out[N]) {
    #pragma HLS INTERFACE m_axi port=A bundle=gmem
    #pragma HLS INTERFACE m_axi port=B bundle=gmem
    #pragma HLS INTERFACE m_axi port=x bundle=gmem
    #pragma HLS INTERFACE m_axi port=y_out bundle=gmem

    #pragma HLS ARRAY_PARTITION variable=A cyclic factor=16 dim=2
    #pragma HLS ARRAY_PARTITION variable=B cyclic factor=16 dim=2
    #pragma HLS ARRAY_PARTITION variable=x cyclic factor=16
    #pragma HLS ARRAY_PARTITION variable=y_out cyclic factor=16

    DATA_TYPE tmp1[N], tmp2[N];

    matrix_vector_mul(alpha, A, x, tmp1);
    matrix_vector_mul(beta, B, x, tmp2);
    vector_add(tmp1, tmp2, y_out);
}