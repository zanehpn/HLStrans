#include "doitgen.h"

void doitgen(int nr, int nq, int np, double A[25][20][30], double C4[30][30], double sum[30]) {
    #pragma HLS INTERFACE m_axi port=A offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=C4 offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=sum offset=slave bundle=gmem
    #pragma HLS INTERFACE s_axilite port=nr
    #pragma HLS INTERFACE s_axilite port=nq
    #pragma HLS INTERFACE s_axilite port=np
    #pragma HLS INTERFACE s_axilite port=return

    #pragma HLS ARRAY_PARTITION variable=sum cyclic factor=TILE_P
    #pragma HLS ARRAY_PARTITION variable=C4 cyclic factor=TILE_P dim=2
    #pragma HLS ARRAY_PARTITION variable=A cyclic factor=TILE_P dim=3

    for (int r = 0; r < 25; r++) {
        #pragma HLS LOOP_FLATTEN off
        for (int q = 0; q < 20; q++) {
            #pragma HLS PIPELINE II=1

            // Initialize sum using parallel unroll
            for (int p = 0; p < 30; p++) {
                #pragma HLS UNROLL factor=TILE_P
                sum[p] = 0.0;
            }

            // Main computation with loop reversal and parallelization
            for (int s = 0; s < 30; s++) {
                #pragma HLS PIPELINE II=1
                double a_val = A[r][q][s];
                for (int p = 0; p < 30; p++) {
                    #pragma HLS UNROLL factor=TILE_P
                    sum[p] += a_val * C4[s][p];
                }
            }

            // Parallel write-back to A matrix
            for (int p = 0; p < 30; p++) {
                #pragma HLS UNROLL factor=TILE_P
                A[r][q][p] = sum[p];
            }
        }
    }
}