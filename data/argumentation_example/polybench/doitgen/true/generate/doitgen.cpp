#include "doitgen.h"

void doitgen(int nr, int nq, int np, double A[25][20][30], double C4[30][30], double sum[30]) {
    #pragma HLS INTERFACE m_axi port=A depth=15000
    #pragma HLS INTERFACE m_axi port=C4 depth=900
    #pragma HLS INTERFACE m_axi port=sum depth=30
    #pragma HLS ARRAY_PARTITION variable=sum complete dim=1
    #pragma HLS ARRAY_PARTITION variable=A cyclic factor=UNROLL_S dim=3
    #pragma HLS ARRAY_PARTITION variable=C4 cyclic factor=UNROLL_P dim=2

    for (int r = 0; r < 25; r++) {
        #pragma HLS LOOP_FLATTEN
        for (int q = 0; q < 20; q++) {
            #pragma HLS PIPELINE II=1
            for (int p = 0; p < 30; p++) {
                #pragma HLS UNROLL factor=UNROLL_P
                sum[p] = 0.0;
                for (int s = 0; s < 30; s++) {
                    #pragma HLS UNROLL factor=UNROLL_S
                    sum[p] += A[r][q][s] * C4[s][p];
                }
            }
            for (int p = 0; p < 30; p++) {
                #pragma HLS UNROLL factor=UNROLL_P
                A[r][q][p] = sum[p];
            }
        }
    }
}