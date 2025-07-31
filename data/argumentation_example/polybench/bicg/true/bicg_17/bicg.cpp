#include "bicg.h"

void bicg(DATA_TYPE A[N][N], DATA_TYPE p[N], DATA_TYPE r[N], DATA_TYPE s_out[N], DATA_TYPE q_out[N]) {
    int i, j;

    DATA_TYPE q[N];
    DATA_TYPE s[N];

    // Initialize q and s arrays
    for (i = 0; i < N; i++) {
        #pragma HLS UNROLL factor=2
        q[i] = 0;
        s[i] = 0;
    }

    // Local buffers for A, p, r
    DATA_TYPE A_buf[N][N];
    DATA_TYPE p_buf[N];
    DATA_TYPE r_buf[N];

    // Load data into local buffers
    for (i = 0; i < N; i++) {
        #pragma HLS UNROLL factor=2
        p_buf[i] = p[i];
        r_buf[i] = r[i];
        for (j = 0; j < N; j++) {
            #pragma HLS UNROLL factor=2
            A_buf[i][j] = A[i][j];
        }
    }

    // Main computation loop
    for (i = 0; i < N; i++) {
        for (j = 0; j < N; j++) {
            #pragma HLS PIPELINE II=1
            q[j] = q[j] + A_buf[i][j] * r_buf[i];
            s[i] = s[i] + A_buf[i][j] * p_buf[j];
        }
    }

    // Write results to output arrays
    for (i = 0; i < N; i++) {
        #pragma HLS UNROLL factor=2
        q_out[i] = q[i];
        s_out[i] = s[i];
    }
}

