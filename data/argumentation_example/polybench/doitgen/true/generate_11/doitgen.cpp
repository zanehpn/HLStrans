#include "doitgen.h"

void compute_tile(int r, int q, double A[25][20][30], double C4[30][30], double sum[30]) {
    #pragma HLS INLINE
    
    for(int p=0; p<30; p++) {
        #pragma HLS UNROLL factor=TILE_P
        sum[p] = 0.0;
    }

    for(int s_tile=0; s_tile<30; s_tile+=TILE_S) {
        #pragma HLS LOOP_FLATTEN
        double A_buf[TILE_S];
        double C4_buf[TILE_S][30];
        #pragma HLS ARRAY_PARTITION variable=A_buf complete
        #pragma HLS ARRAY_PARTITION variable=C4_buf cyclic factor=TILE_P dim=2

        LOAD_A: for(int s=0; s<TILE_S; s++) {
            A_buf[s] = A[r][q][s_tile+s];
        }

        LOAD_C4: for(int s=0; s<TILE_S; s++) {
            for(int p=0; p<30; p++) {
                #pragma HLS UNROLL factor=TILE_P
                C4_buf[s][p] = C4[s_tile+s][p];
            }
        }

        PROCESS: for(int s=0; s<TILE_S; s++) {
            #pragma HLS PIPELINE II=1
            double a_val = A_buf[s];
            for(int p=0; p<30; p++) {
                #pragma HLS UNROLL factor=TILE_P
                sum[p] += a_val * C4_buf[s][p];
            }
        }
    }

    WRITE: for(int p=0; p<30; p++) {
        #pragma HLS UNROLL factor=TILE_P
        A[r][q][p] = sum[p];
    }
}

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

    MAIN_LOOP: for(int r=0; r<25; r++) {
        #pragma HLS LOOP_FLATTEN
        for(int q=0; q<20; q++) {
            #pragma HLS PIPELINE II=1
            compute_tile(r, q, A, C4, sum);
        }
    }
}