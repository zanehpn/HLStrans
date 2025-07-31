#include "bicg.h"

// Function to initialize s_out array
void initialize_s_out(DATA_TYPE s_out[N]) {
    #pragma HLS INLINE
    for (int i = 0; i < N; i++) {
        #pragma HLS UNROLL factor=2
        s_out[i] = 0;
    }
}

// Function to initialize q_out array
void initialize_q_out(DATA_TYPE q_out[N]) {
    #pragma HLS INLINE
    for (int i = 0; i < N; i++) {
        #pragma HLS UNROLL factor=2
        q_out[i] = 0;
    }
}

// Function to compute s_out and q_out
void compute_bicg(DATA_TYPE A[N][N], DATA_TYPE p[N], DATA_TYPE r[N], DATA_TYPE s_out[N], DATA_TYPE q_out[N]) {
    #pragma HLS INLINE
    for (int i = 0; i < N; i++) {
        #pragma HLS PIPELINE II=1
        for (int j = 0; j < N; j++) {
            #pragma HLS UNROLL factor=2
            s_out[j] = s_out[j] + r[i] * A[i][j];
            q_out[i] = q_out[i] + A[i][j] * p[j];
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

    // Local buffers for input and output
    DATA_TYPE A_local[N][N];
    DATA_TYPE p_local[N];
    DATA_TYPE r_local[N];
    DATA_TYPE s_out_local[N];
    DATA_TYPE q_out_local[N];

    // Load data from global memory to local buffers
    for (int i = 0; i < N; i++) {
        #pragma HLS UNROLL factor=2
        p_local[i] = p[i];
        r_local[i] = r[i];
        for (int j = 0; j < N; j++) {
            #pragma HLS UNROLL factor=2
            A_local[i][j] = A[i][j];
        }
    }

    // Initialize s_out and q_out
    initialize_s_out(s_out_local);
    initialize_q_out(q_out_local);

    // Compute bicg
    compute_bicg(A_local, p_local, r_local, s_out_local, q_out_local);

    // Store data from local buffers to global memory
    for (int i = 0; i < N; i++) {
        #pragma HLS UNROLL factor=2
        s_out[i] = s_out_local[i];
        q_out[i] = q_out_local[i];
    }
}

