#include "bicg.h"

// Function to compute s_out[i]
void compute_s_out(DATA_TYPE A[N][N], DATA_TYPE p[N], DATA_TYPE s_out[N]) {
    DATA_TYPE buffer_A[N][N];
    DATA_TYPE buffer_p[N];

    #pragma HLS ARRAY_PARTITION variable=buffer_A cyclic factor=16 dim=2
    #pragma HLS ARRAY_PARTITION variable=buffer_p cyclic factor=16

    // Load data into local buffers
    for (int i = 0; i < N; i++) {
        #pragma HLS UNROLL factor=16
        buffer_p[i] = p[i];
        for (int j = 0; j < N; j++) {
            #pragma HLS UNROLL factor=16
            buffer_A[i][j] = A[i][j];
        }
    }

    // Compute s_out
    for (int i = 0; i < N; i++) {
        #pragma HLS PIPELINE II=1
        s_out[i] = 0;
        for (int j = 0; j < N; j++) {
            #pragma HLS UNROLL factor=16
            s_out[i] += buffer_A[j][i] * buffer_p[j];
        }
    }
}

// Function to compute q_out[j]
void compute_q_out(DATA_TYPE A[N][N], DATA_TYPE r[N], DATA_TYPE q_out[N]) {
    DATA_TYPE buffer_A[N][N];
    DATA_TYPE buffer_r[N];

    #pragma HLS ARRAY_PARTITION variable=buffer_A cyclic factor=16 dim=2
    #pragma HLS ARRAY_PARTITION variable=buffer_r cyclic factor=16

    // Load data into local buffers
    for (int i = 0; i < N; i++) {
        #pragma HLS UNROLL factor=16
        buffer_r[i] = r[i];
        for (int j = 0; j < N; j++) {
            #pragma HLS UNROLL factor=16
            buffer_A[i][j] = A[i][j];
        }
    }

    // Compute q_out
    for (int j = 0; j < N; j++) {
        #pragma HLS PIPELINE II=1
        q_out[j] = 0;
        for (int i = 0; i < N; i++) {
            #pragma HLS UNROLL factor=16
            q_out[j] += buffer_A[j][i] * buffer_r[i];
        }
    }
}

// Top function
void bicg(DATA_TYPE A[N][N], DATA_TYPE p[N], DATA_TYPE r[N], DATA_TYPE s_out[N], DATA_TYPE q_out[N]) {
    #pragma HLS DATAFLOW

    compute_s_out(A, p, s_out);
    compute_q_out(A, r, q_out);
}

