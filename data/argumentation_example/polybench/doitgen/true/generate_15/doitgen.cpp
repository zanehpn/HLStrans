#include "doitgen.h"

void doitgen(int nr, int nq, int np, double A[25][20][30], double C4[30][30], double sum[30]) {
#pragma HLS INTERFACE m_axi port=A depth=15000
#pragma HLS INTERFACE m_axi port=C4 depth=900
#pragma HLS INTERFACE m_axi port=sum depth=30
#pragma HLS ARRAY_PARTITION variable=C4 cyclic factor=6 dim=2
#pragma HLS ARRAY_PARTITION variable=A cyclic factor=5 dim=3

    double C4_buffer[30][30];
#pragma HLS ARRAY_PARTITION variable=C4_buffer cyclic factor=6 dim=2

    // Load C4 matrix into local buffer
    for(int s=0; s<30; s++) {
        for(int p=0; p<30; p++) {
#pragma HLS PIPELINE II=1
            C4_buffer[s][p] = C4[s][p];
        }
    }

    // Process each element in r-q plane
    for(int r=0; r<25; r++) {
        for(int q=0; q<20; q++) {
#pragma HLS PIPELINE II=1
            double sum_buffer[30] = {0};
#pragma HLS ARRAY_PARTITION variable=sum_buffer cyclic factor=6

            // Tile s dimension for better data reuse
            for(int s_tile=0; s_tile<30; s_tile+=TILE_SIZE) {
                double A_tile[TILE_SIZE];
#pragma HLS ARRAY_PARTITION variable=A_tile complete

                // Load tile of A
                for(int s=0; s<TILE_SIZE; s++) {
#pragma HLS UNROLL
                    A_tile[s] = A[r][q][s_tile+s];
                }

                // Matrix multiplication core
                for(int s=0; s<TILE_SIZE; s++) {
#pragma HLS UNROLL
                    for(int p=0; p<30; p++) {
#pragma HLS UNROLL factor=6
#pragma HLS PIPELINE II=1
                        sum_buffer[p] += A_tile[s] * C4_buffer[s_tile+s][p];
                    }
                }
            }

            // Write back results
            for(int p=0; p<30; p++) {
#pragma HLS PIPELINE II=1
                A[r][q][p] = sum_buffer[p];
            }
        }
    }
}