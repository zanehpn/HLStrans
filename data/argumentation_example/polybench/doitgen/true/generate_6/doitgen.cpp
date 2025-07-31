// doitgen.cpp
#include "doitgen.h"

void process_A_tile(int r, int q, int s_tile, double A[25][20][30], double local_A[TILE_S]) {
    #pragma HLS INLINE
    for(int s = 0; s < TILE_S; s++) {
        #pragma HLS UNROLL
        local_A[s] = A[r][q][s + s_tile];
    }
}

void load_C4_tile(int s_tile, int p_tile, double C4[30][30], double local_C4[TILE_S][TILE_P]) {
    #pragma HLS INLINE
    for(int s = 0; s < TILE_S; s++) {
        #pragma HLS UNROLL
        for(int p = 0; p < TILE_P; p++) {
            #pragma HLS UNROLL
            local_C4[s][p] = C4[s + s_tile][p + p_tile];
        }
    }
}

void compute_partial_sum(double local_A[TILE_S], double local_C4[TILE_S][TILE_P], double sum[TILE_P]) {
    #pragma HLS INLINE
    for(int s = 0; s < TILE_S; s++) {
        #pragma HLS UNROLL
        for(int p = 0; p < TILE_P; p++) {
            #pragma HLS UNROLL
            sum[p] += local_A[s] * local_C4[s][p];
        }
    }
}

void doitgen(int nr, int nq, int np, double A[25][20][30], double C4[30][30], double sum[30]) {
    #pragma HLS INTERFACE m_axi port=A depth=15000
    #pragma HLS INTERFACE m_axi port=C4 depth=900
    #pragma HLS INTERFACE m_axi port=sum depth=30
    #pragma HLS ARRAY_PARTITION variable=sum complete dim=1
    #pragma HLS ARRAY_PARTITION variable=A cyclic factor=UNROLL_S dim=3
    #pragma HLS ARRAY_PARTITION variable=C4 cyclic factor=UNROLL_P dim=2

    double sum_buffer[2][TILE_P];
    #pragma HLS ARRAY_PARTITION variable=sum_buffer complete dim=1
    #pragma HLS ARRAY_PARTITION variable=sum_buffer complete dim=2

    for(int r = 0; r < 25; r++) {
        #pragma HLS LOOP_FLATTEN
        for(int q = 0; q < 20; q++) {
            #pragma HLS PIPELINE II=1
            int pp_idx = q % 2;
            
            // Parallel initialization using predicated execution
            INIT_SUM: for(int p = 0; p < TILE_P; p++) {
                #pragma HLS UNROLL
                sum_buffer[pp_idx][p] = 0.0;
                sum_buffer[(pp_idx+1)%2][p] = (q < 19) ? 0.0 : sum_buffer[(pp_idx+1)%2][p];
            }

            // Full unroll for maximum parallelism
            double local_A[TILE_S];
            #pragma HLS ARRAY_PARTITION variable=local_A complete
            process_A_tile(r, q, 0, A, local_A);

            double local_C4[TILE_S][TILE_P];
            #pragma HLS ARRAY_PARTITION variable=local_C4 complete
            load_C4_tile(0, 0, C4, local_C4);

            compute_partial_sum(local_A, local_C4, sum_buffer[pp_idx]);

            // Final write back with full unroll
            WRITE_BACK: for(int p = 0; p < TILE_P; p++) {
                #pragma HLS UNROLL
                A[r][q][p] = sum_buffer[pp_idx][p];
            }
        }
    }
}