#include "bicg.h"

void compute_q(DATA_TYPE A[N][N], DATA_TYPE r[N], DATA_TYPE temp_q[N]) {
    for (int i = 0; i < N; i++) {
        #pragma HLS UNROLL factor=2
        temp_q[i] = 0;
        for (int j = 0; j < N; j++) {
            #pragma HLS UNROLL factor=2
            temp_q[i] += A[i][j] * r[j];
        }
    }
}

void compute_s(DATA_TYPE A[N][N], DATA_TYPE p[N], DATA_TYPE temp_s[N]) {
    for (int j = 0; j < N; j++) {
        #pragma HLS UNROLL factor=2
        temp_s[j] = 0;
        for (int i = 0; i < N; i++) {
            #pragma HLS UNROLL factor=2
            temp_s[j] += A[i][j] * p[i];
        }
    }
}

void bicg(DATA_TYPE A[N][N], DATA_TYPE p[N], DATA_TYPE r[N], DATA_TYPE s_out[N], DATA_TYPE q_out[N]) {
    #pragma HLS INTERFACE m_axi port=A offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=p offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=r offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=s_out offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=q_out offset=slave bundle=gmem

    #pragma HLS ARRAY_PARTITION variable=A cyclic factor=2 dim=1
    #pragma HLS ARRAY_PARTITION variable=A cyclic factor=2 dim=2
    #pragma HLS ARRAY_PARTITION variable=p cyclic factor=2
    #pragma HLS ARRAY_PARTITION variable=r cyclic factor=2
    #pragma HLS ARRAY_PARTITION variable=s_out cyclic factor=2
    #pragma HLS ARRAY_PARTITION variable=q_out cyclic factor=2

    DATA_TYPE temp_q[N], temp_s[N];
    #pragma HLS ARRAY_PARTITION variable=temp_q cyclic factor=2
    #pragma HLS ARRAY_PARTITION variable=temp_s cyclic factor=2

    compute_q(A, r, temp_q);
    compute_s(A, p, temp_s);

    for (int i = 0; i < N; i++) {
        #pragma HLS PIPELINE II=1
        q_out[i] = temp_q[i];
        s_out[i] = temp_s[i];
    }
}

