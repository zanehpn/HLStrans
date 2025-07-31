#include "bicg.h"

// Sub function to compute s_out
void compute_s_out(DATA_TYPE A[N][N], DATA_TYPE p[N], DATA_TYPE s_out[N]) {
    DATA_TYPE buffer_s[N];
    #pragma HLS ARRAY_PARTITION variable=buffer_s cyclic factor=8
    #pragma HLS ARRAY_PARTITION variable=A cyclic factor=8 dim=2
    #pragma HLS ARRAY_PARTITION variable=p cyclic factor=8

    for (int i = 0; i < N; i++) {
        #pragma HLS PIPELINE II=1
        buffer_s[i] = 0;
        for (int j = 0; j < N; j++) {
            #pragma HLS UNROLL factor=8
            buffer_s[i] += A[i][j] * p[j];
        }
        s_out[i] = buffer_s[i];
    }
}

// Sub function to compute q_out
void compute_q_out(DATA_TYPE A[N][N], DATA_TYPE r[N], DATA_TYPE q_out[N]) {
    DATA_TYPE buffer_q[N];
    #pragma HLS ARRAY_PARTITION variable=buffer_q cyclic factor=8
    #pragma HLS ARRAY_PARTITION variable=A cyclic factor=8 dim=1
    #pragma HLS ARRAY_PARTITION variable=r cyclic factor=8

    for (int j = 0; j < N; j++) {
        #pragma HLS PIPELINE II=1
        buffer_q[j] = 0;
        for (int i = 0; i < N; i++) {
            #pragma HLS UNROLL factor=8
            buffer_q[j] += A[i][j] * r[i];
        }
        q_out[j] = buffer_q[j];
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

    compute_s_out(A, p, s_out);
    compute_q_out(A, r, q_out);
}

