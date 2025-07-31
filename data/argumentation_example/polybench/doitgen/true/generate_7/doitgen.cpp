// doitgen.cpp
#include "doitgen.h"

void doitgen(int nr, int nq, int np, double A[25][20][30], double C4[30][30], double sum[30]) {
    #pragma HLS INTERFACE m_axi port=A depth=15000
    #pragma HLS INTERFACE m_axi port=C4 depth=900
    #pragma HLS INTERFACE m_axi port=sum depth=30
    #pragma HLS INTERFACE s_axilite port=nr
    #pragma HLS INTERFACE s_axilite port=nq
    #pragma HLS INTERFACE s_axilite port=np
    #pragma HLS INTERFACE s_axilite port=return

    #pragma HLS ARRAY_PARTITION variable=A cyclic factor=TILE_S dim=3
    #pragma HLS ARRAY_PARTITION variable=C4 cyclic factor=TILE_S dim=1
    #pragma HLS ARRAY_PARTITION variable=C4 cyclic factor=TILE_P dim=2
    #pragma HLS ARRAY_PARTITION variable=sum cyclic factor=TILE_P

    for (int r = 0; r < 25; r++) {
        #pragma HLS LOOP_FLATTEN
        for (int q = 0; q < 20; q++) {
            #pragma HLS PIPELINE II=1

            double sum_local[30];
            #pragma HLS ARRAY_PARTITION variable=sum_local cyclic factor=TILE_P

            // Initialize sum_local
            Init_Loop:
            for (int p = 0; p < 30; p++) {
                #pragma HLS UNROLL factor=TILE_P
                sum_local[p] = 0.0;
            }

            // Matrix multiplication with tiling
            S_Loop:
            for (int s = 0; s < 30; s++) {
                #pragma HLS UNROLL factor=TILE_S
                P_Tile_Loop:
                for (int p_tile = 0; p_tile < 30; p_tile += TILE_P) {
                    #pragma HLS PIPELINE II=1
                    for (int p = p_tile; p < p_tile + TILE_P; p++) {
                        #pragma HLS UNROLL
                        sum_local[p] += A[r][q][s] * C4[s][p];
                    }
                }
            }

            // Write back results
            Write_Back_Loop:
            for (int p = 0; p < 30; p++) {
                #pragma HLS UNROLL factor=TILE_P
                A[r][q][p] = sum_local[p];
            }
        }
    }
}