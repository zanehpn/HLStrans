#include "bicg.h"

// Sub-functions to compute s_out and q_out
void compute_s_out(DATA_TYPE A[N][N], DATA_TYPE q_out[N], DATA_TYPE s_out[N]) {
    DATA_TYPE buffer_s_out[N];
    #pragma HLS ARRAY_PARTITION variable=buffer_s_out cyclic factor=8

    for (int i = 0; i < N; i++) {
        #pragma HLS PIPELINE II=1
        buffer_s_out[i] = 0;
        for (int j = 0; j < N; j++) {
            #pragma HLS UNROLL factor=8
            buffer_s_out[i] += A[i][j] * q_out[j];
        }
        s_out[i] = buffer_s_out[i];
    }
}

void compute_q_out(DATA_TYPE A[N][N], DATA_TYPE p[N], DATA_TYPE q_out[N]) {
    DATA_TYPE buffer_q_out[N];
    #pragma HLS ARRAY_PARTITION variable=buffer_q_out cyclic factor=8

    for (int j = 0; j < N; j++) {
        #pragma HLS PIPELINE II=1
        buffer_q_out[j] = 0;
        for (int i = 0; i < N; i++) {
            #pragma HLS UNROLL factor=8
            buffer_q_out[j] += A[i][j] * p[i];
        }
        q_out[j] = buffer_q_out[j];
    }
}

// Top function
void bicg(DATA_TYPE A[N][N], DATA_TYPE p[N], DATA_TYPE r[N], DATA_TYPE s_out[N], DATA_TYPE q_out[N]) {
    #pragma HLS INTERFACE m_axi port=A offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=p offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=r offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=s_out offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=q_out offset=slave bundle=gmem
    #pragma HLS INTERFACE s_axilite port=return bundle=control

    DATA_TYPE buffer_A[N][N];
    DATA_TYPE buffer_p[N];
    DATA_TYPE buffer_r[N];
    DATA_TYPE buffer_s_out[N];
    DATA_TYPE buffer_q_out[N];

    #pragma HLS ARRAY_PARTITION variable=buffer_A cyclic factor=8 dim=2
    #pragma HLS ARRAY_PARTITION variable=buffer_p cyclic factor=8
    #pragma HLS ARRAY_PARTITION variable=buffer_r cyclic factor=8
    #pragma HLS ARRAY_PARTITION variable=buffer_s_out cyclic factor=8
    #pragma HLS ARRAY_PARTITION variable=buffer_q_out cyclic factor=8

    // Load data into local buffers
    for (int i = 0; i < N; i++) {
        #pragma HLS PIPELINE II=1
        buffer_p[i] = p[i];
        buffer_r[i] = r[i];
        for (int j = 0; j < N; j++) {
            #pragma HLS UNROLL factor=8
            buffer_A[i][j] = A[i][j];
        }
    }

    // Compute q_out
    compute_q_out(buffer_A, buffer_p, buffer_q_out);

    // Compute s_out
    compute_s_out(buffer_A, buffer_q_out, buffer_s_out);

    // Write results back to global memory
    for (int i = 0; i < N; i++) {
        #pragma HLS PIPELINE II=1
        s_out[i] = buffer_s_out[i];
        q_out[i] = buffer_q_out[i];
    }
}

