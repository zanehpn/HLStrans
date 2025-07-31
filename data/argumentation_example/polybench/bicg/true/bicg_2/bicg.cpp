#include "bicg.h"

void initialize_outputs(DATA_TYPE s_out[N], DATA_TYPE q_out[N]) {
    for (int i = 0; i < N; i++) {
        #pragma HLS UNROLL factor=2
        s_out[i] = 0;
        q_out[i] = 0;
    }
}

void compute_s_q(DATA_TYPE A[N][N], DATA_TYPE p[N], DATA_TYPE r[N], DATA_TYPE s_out[N], DATA_TYPE q_out[N]) {
    DATA_TYPE r_buffer[N];
    DATA_TYPE p_buffer[N];
    DATA_TYPE A_buffer[N][N];

    // Load data into local buffers
    for (int i = 0; i < N; i++) {
        #pragma HLS UNROLL factor=2
        r_buffer[i] = r[i];
        p_buffer[i] = p[i];
        for (int j = 0; j < N; j++) {
            #pragma HLS UNROLL factor=2
            A_buffer[i][j] = A[i][j];
        }
    }

    // Compute s_out and q_out using local buffers
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            #pragma HLS UNROLL factor=2
            s_out[j] = s_out[j] + r_buffer[i] * A_buffer[i][j];
            q_out[i] = q_out[i] + A_buffer[i][j] * p_buffer[j];
        }
    }
}

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

    initialize_outputs(s_out, q_out);
    compute_s_q(A, p, r, s_out, q_out);
}

