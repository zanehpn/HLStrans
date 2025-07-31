#include "bicg.h"

// Sub-functions for the bicg kernel
void compute_s(DATA_TYPE A[N][N], DATA_TYPE r[N], DATA_TYPE s_out[N]) {
    DATA_TYPE s_buffer[N];
    #pragma HLS ARRAY_PARTITION variable=s_buffer cyclic factor=4

    for (int i = 0; i < N; i++) {
        #pragma HLS PIPELINE II=1
        s_buffer[i] = 0;
        for (int j = 0; j < N; j++) {
            #pragma HLS UNROLL factor=4
            s_buffer[i] += A[i][j] * r[j];
        }
        s_out[i] = s_buffer[i];
    }
}

void compute_q(DATA_TYPE A[N][N], DATA_TYPE p[N], DATA_TYPE q_out[N]) {
    DATA_TYPE q_buffer[N];
    #pragma HLS ARRAY_PARTITION variable=q_buffer cyclic factor=4

    for (int j = 0; j < N; j++) {
        #pragma HLS PIPELINE II=1
        q_buffer[j] = 0;
        for (int i = 0; i < N; i++) {
            #pragma HLS UNROLL factor=4
            q_buffer[j] += A[i][j] * p[i];
        }
        q_out[j] = q_buffer[j];
    }
}

// Top function
void bicg(DATA_TYPE A[N][N], DATA_TYPE p[N], DATA_TYPE r[N], DATA_TYPE s_out[N], DATA_TYPE q_out[N]) {
    #pragma HLS INTERFACE m_axi port=A offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=p offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=r offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=s_out offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=q_out offset=slave bundle=gmem
    #pragma HLS INTERFACE s_axilite port=A bundle=control
    #pragma HLS INTERFACE s_axilite port=p bundle=control
    #pragma HLS INTERFACE s_axilite port=r bundle=control
    #pragma HLS INTERFACE s_axilite port=s_out bundle=control
    #pragma HLS INTERFACE s_axilite port=q_out bundle=control
    #pragma HLS INTERFACE s_axilite port=return bundle=control

    #pragma HLS ARRAY_PARTITION variable=A cyclic factor=4 dim=2
    #pragma HLS ARRAY_PARTITION variable=p cyclic factor=4
    #pragma HLS ARRAY_PARTITION variable=r cyclic factor=4
    #pragma HLS ARRAY_PARTITION variable=s_out cyclic factor=4
    #pragma HLS ARRAY_PARTITION variable=q_out cyclic factor=4

    compute_s(A, r, s_out);
    compute_q(A, p, q_out);
}

