#include "doitgen.h"

void process_tile(int r, int q, int s_tile, double A[25][20][30], double C4[30][30], double local_sum[30]) {
#pragma HLS INLINE
    double localA[TILE_SIZE];
    double localC4[TILE_SIZE][30];
#pragma HLS ARRAY_PARTITION variable=localA cyclic factor=TILE_SIZE
#pragma HLS ARRAY_PARTITION variable=localC4 cyclic factor=TILE_SIZE dim=1

    // Load A tile
    for (int s = 0; s < TILE_SIZE; s++) {
#pragma HLS UNROLL
        localA[s] = A[r][q][s_tile + s];
    }

    // Load C4 tile
    for (int s = 0; s < TILE_SIZE; s++) {
        for (int p = 0; p < 30; p++) {
#pragma HLS PIPELINE II=1
            localC4[s][p] = C4[s_tile + s][p];
        }
    }

    // Compute partial sums
    for (int s = 0; s < TILE_SIZE; s++) {
#pragma HLS UNROLL
        for (int p = 0; p < 30; p++) {
#pragma HLS PIPELINE II=1
#pragma HLS UNROLL factor=6
            local_sum[p] += localA[s] * localC4[s][p];
        }
    }
}

void compute_inner(int r, int q, double A[25][20][30], double C4[30][30]) {
#pragma HLS INLINE
    double local_sum[30] = {0};
#pragma HLS ARRAY_PARTITION variable=local_sum cyclic factor=6

    for (int s_tile = 0; s_tile < 30; s_tile += TILE_SIZE) {
#pragma HLS DATAFLOW
        process_tile(r, q, s_tile, A, C4, local_sum);
    }

    for (int p = 0; p < 30; p++) {
#pragma HLS PIPELINE II=1
        A[r][q][p] = local_sum[p];
    }
}

void doitgen(int nr, int nq, int np, double A[25][20][30], double C4[30][30], double sum[30]) {
#pragma HLS INTERFACE m_axi port=A depth=15000
#pragma HLS INTERFACE m_axi port=C4 depth=900
#pragma HLS INTERFACE m_axi port=sum depth=30
#pragma HLS ARRAY_PARTITION variable=C4 cyclic factor=6 dim=2
#pragma HLS ARRAY_PARTITION variable=A cyclic factor=5 dim=3

    for (int r = 0; r < 25; r++) {
        for (int q = 0; q < 20; q++) {
#pragma HLS PIPELINE II=1
            compute_inner(r, q, A, C4);
        }
    }
}