#include "bicg.h"

void initialize_s(DATA_TYPE s_out[N]) {
    #pragma HLS INLINE off
    for (int i = 0; i < N; i++) {
        #pragma HLS UNROLL
        s_out[i] = 0;
    }
}

void initialize_q(DATA_TYPE q_out[N]) {
    #pragma HLS INLINE off
    for (int i = 0; i < N; i++) {
        #pragma HLS UNROLL
        q_out[i] = 0;
    }
}

void compute_s_q(DATA_TYPE A[N][N], DATA_TYPE p[N], DATA_TYPE r[N], DATA_TYPE s_out[N], DATA_TYPE q_out[N]) {
    #pragma HLS INLINE off
    for (int i = 0; i < N; i++) {
        #pragma HLS PIPELINE II=1
        for (int j = 0; j < N; j++) {
            #pragma HLS UNROLL
            s_out[j] += r[i] * A[i][j];
            q_out[i] += A[i][j] * p[j];
        }
    }
}

void bicg(DATA_TYPE A[N][N], DATA_TYPE p[N], DATA_TYPE r[N], DATA_TYPE s_out[N], DATA_TYPE q_out[N]) {
    #pragma HLS ARRAY_PARTITION variable=A complete dim=1
    #pragma HLS ARRAY_PARTITION variable=s_out complete
    #pragma HLS ARRAY_PARTITION variable=q_out complete

    initialize_s(s_out);
    initialize_q(q_out);
    compute_s_q(A, p, r, s_out, q_out);
}

