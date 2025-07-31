#include "bicg.h"

// Sub-function to compute q_out
void compute_q_out(DATA_TYPE A[N][N], DATA_TYPE p[N], DATA_TYPE q_out[N]) {
    DATA_TYPE buffer_A[N][N];
    DATA_TYPE buffer_p[N];
    DATA_TYPE buffer_q_out[N];

    // Load data into local buffers
    for (int i = 0; i < N; i++) {
        #pragma HLS UNROLL factor=2
        buffer_p[i] = p[i];
        buffer_q_out[i] = 0;
        for (int j = 0; j < N; j++) {
            #pragma HLS UNROLL factor=2
            buffer_A[i][j] = A[i][j];
        }
    }

    // Compute q_out
    for (int i = 0; i < N; i++) {
        #pragma HLS PIPELINE II=1
        for (int j = 0; j < N; j++) {
            #pragma HLS UNROLL factor=2
            buffer_q_out[i] += buffer_A[j][i] * buffer_p[j];
        }
    }

    // Store data back to global memory
    for (int i = 0; i < N; i++) {
        #pragma HLS UNROLL factor=2
        q_out[i] = buffer_q_out[i];
    }
}

// Sub-function to compute s_out
void compute_s_out(DATA_TYPE A[N][N], DATA_TYPE r[N], DATA_TYPE s_out[N]) {
    DATA_TYPE buffer_A[N][N];
    DATA_TYPE buffer_r[N];
    DATA_TYPE buffer_s_out[N];

    // Load data into local buffers
    for (int i = 0; i < N; i++) {
        #pragma HLS UNROLL factor=2
        buffer_r[i] = r[i];
        buffer_s_out[i] = 0;
        for (int j = 0; j < N; j++) {
            #pragma HLS UNROLL factor=2
            buffer_A[i][j] = A[i][j];
        }
    }

    // Compute s_out
    for (int i = 0; i < N; i++) {
        #pragma HLS PIPELINE II=1
        for (int j = 0; j < N; j++) {
            #pragma HLS UNROLL factor=2
            buffer_s_out[i] += buffer_A[i][j] * buffer_r[j];
        }
    }

    // Store data back to global memory
    for (int i = 0; i < N; i++) {
        #pragma HLS UNROLL factor=2
        s_out[i] = buffer_s_out[i];
    }
}

// Top function
void bicg(DATA_TYPE A[N][N], DATA_TYPE p[N], DATA_TYPE r[N], DATA_TYPE s_out[N], DATA_TYPE q_out[N]) {
    #pragma HLS DATAFLOW

    compute_q_out(A, p, q_out);
    compute_s_out(A, r, s_out);
}

