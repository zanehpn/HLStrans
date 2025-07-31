#include "gesummv.h"

void matrix_vector_mult(DATA_TYPE matrix[N][N], DATA_TYPE vector[N], DATA_TYPE result[N], DATA_TYPE scalar) {
    #pragma HLS INLINE
    for (int i = 0; i < N; i++) {
        #pragma HLS PIPELINE II=1
        DATA_TYPE sum = 0;
        for (int j = 0; j < N; j++) {
            #pragma HLS UNROLL factor=16
            sum += matrix[i][j] * vector[j];
        }
        result[i] = scalar * sum;
    }
}

void vector_add(DATA_TYPE vec1[N], DATA_TYPE vec2[N], DATA_TYPE result[N]) {
    #pragma HLS INLINE
    for (int i = 0; i < N; i++) {
        #pragma HLS PIPELINE II=1
        result[i] = vec1[i] + vec2[i];
    }
}

void gesummv(DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE A[N][N], DATA_TYPE B[N][N], DATA_TYPE x[N], DATA_TYPE y_out[N]) {
    #pragma HLS INTERFACE m_axi port=A offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=B offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=x offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=y_out offset=slave bundle=gmem

    DATA_TYPE buff_A[N][N], buff_B[N][N], buff_x[N];
    DATA_TYPE tmp1[N], tmp2[N];

    #pragma HLS ARRAY_PARTITION variable=buff_A cyclic factor=16 dim=2
    #pragma HLS ARRAY_PARTITION variable=buff_B cyclic factor=16 dim=2
    #pragma HLS ARRAY_PARTITION variable=buff_x cyclic factor=16

    // Read input data
    for (int i = 0; i < N; i++) {
        #pragma HLS PIPELINE II=1
        buff_x[i] = x[i];
        for (int j = 0; j < N; j++) {
            #pragma HLS UNROLL factor=16
            buff_A[i][j] = A[i][j];
            buff_B[i][j] = B[i][j];
        }
    }

    // Compute matrix-vector multiplications
    matrix_vector_mult(buff_A, buff_x, tmp1, alpha);
    matrix_vector_mult(buff_B, buff_x, tmp2, beta);

    // Add results and write output
    vector_add(tmp1, tmp2, y_out);
}