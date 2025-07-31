#include "bicg.h"

// Sub-functions for the bicg kernel
void compute_s(DATA_TYPE A[N][N], DATA_TYPE p[N], DATA_TYPE s_out[N]) {
    #pragma HLS INLINE off

    DATA_TYPE buffer_A[N][N];
    DATA_TYPE buffer_p[N];
    DATA_TYPE buffer_s[N];

    // Load data into buffers
    for (int i = 0; i < N; i++) {
        #pragma HLS UNROLL factor=8
        buffer_p[i] = p[i];
        buffer_s[i] = 0;
        for (int j = 0; j < N; j++) {
            #pragma HLS UNROLL factor=8
            buffer_A[i][j] = A[i][j];
        }
    }

    // Compute s_out
    for (int i = 0; i < N; i++) {
        #pragma HLS PIPELINE II=1
        for (int j = 0; j < N; j++) {
            #pragma HLS UNROLL factor=8
            buffer_s[i] += buffer_A[i][j] * buffer_p[j];
        }
        s_out[i] = buffer_s[i];
    }
}

void compute_q(DATA_TYPE A[N][N], DATA_TYPE r[N], DATA_TYPE q_out[N]) {
    #pragma HLS INLINE off

    DATA_TYPE buffer_A[N][N];
    DATA_TYPE buffer_r[N];
    DATA_TYPE buffer_q[N];

    // Load data into buffers
    for (int i = 0; i < N; i++) {
        #pragma HLS UNROLL factor=8
        buffer_r[i] = r[i];
        buffer_q[i] = 0;
        for (int j = 0; j < N; j++) {
            #pragma HLS UNROLL factor=8
            buffer_A[i][j] = A[i][j];
        }
    }

    // Compute q_out
    for (int j = 0; j < N; j++) {
        #pragma HLS PIPELINE II=1
        for (int i = 0; i < N; i++) {
            #pragma HLS UNROLL factor=8
            buffer_q[j] += buffer_A[i][j] * buffer_r[i];
        }
        q_out[j] = buffer_q[j];
    }
}

// Top function
void bicg(DATA_TYPE A[N][N], DATA_TYPE p[N], DATA_TYPE r[N], DATA_TYPE s_out[N], DATA_TYPE q_out[N]) {
    #pragma HLS DATAFLOW

    compute_s(A, p, s_out);
    compute_q(A, r, q_out);
}

