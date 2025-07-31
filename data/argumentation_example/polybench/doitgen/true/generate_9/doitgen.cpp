#include "doitgen.h"

void compute_sum_tile(int r, int q, int s, double A[25][20][30], double C4[30][30], double sum[30]) {
    #pragma HLS INLINE
    
    double a_val = A[r][q][s];
    
    for (int p = 0; p < 30; p += TILE_P) {
        #pragma HLS UNROLL factor=TILE_P
        for (int p_in = 0; p_in < TILE_P; p_in++) {
            #pragma HLS UNROLL
            int p_idx = p + p_in;
            if (p_idx < 30) {
                sum[p_idx] += a_val * C4[s][p_idx];
            }
        }
    }
}

void doitgen(int nr, int nq, int np, double A[25][20][30], double C4[30][30], double sum[30]) {
    #pragma HLS INTERFACE m_axi port=A offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=C4 offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=sum offset=slave bundle=gmem
    #pragma HLS INTERFACE s_axilite port=nr bundle=control
    #pragma HLS INTERFACE s_axilite port=nq bundle=control
    #pragma HLS INTERFACE s_axilite port=np bundle=control
    #pragma HLS INTERFACE s_axilite port=return bundle=control
    
    #pragma HLS ARRAY_PARTITION variable=sum complete dim=1
    #pragma HLS ARRAY_PARTITION variable=C4 cyclic factor=TILE_P dim=2
    #pragma HLS ARRAY_PARTITION variable=A cyclic factor=TILE_S dim=3

    for (int r = 0; r < 25; r++) {
        for (int q = 0; q < 20; q++) {
            #pragma HLS PIPELINE II=1
            
            // Initialize sum array
            for (int p = 0; p < 30; p++) {
                #pragma HLS UNROLL
                sum[p] = 0.0;
            }
            
            // Compute matrix multiplication
            for (int s = 0; s < 30; s++) {
                compute_sum_tile(r, q, s, A, C4, sum);
            }
            
            // Write results back to A
            for (int p = 0; p < 30; p++) {
                #pragma HLS UNROLL
                A[r][q][p] = sum[p];
            }
        }
    }
}