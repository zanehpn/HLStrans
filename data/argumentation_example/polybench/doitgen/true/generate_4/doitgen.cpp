#include "doitgen.h"

void process_A_tile(int r, int q, int s_tile, double A[25][20][30], double local_A[TILE_S]) {
    #pragma HLS INLINE
    for(int s = 0; s < TILE_S; s++) {
        #pragma HLS UNROLL
        local_A[s] = A[r][q][s_tile + s];
    }
}

void load_C4_tile(int s_tile, int p_tile, double C4[30][30], double local_C4[TILE_S][TILE_P]) {
    #pragma HLS INLINE
    #pragma HLS ARRAY_PARTITION variable=local_C4 complete dim=1
    #pragma HLS ARRAY_PARTITION variable=local_C4 complete dim=2
    for(int s = 0; s < TILE_S; s++) {
        #pragma HLS UNROLL
        for(int p = 0; p < TILE_P; p++) {
            #pragma HLS UNROLL
            local_C4[s][p] = C4[s_tile + s][p_tile + p];
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

    double sum_buffer[2][30];
    #pragma HLS ARRAY_PARTITION variable=sum_buffer complete dim=2

    for(int r = 0; r < 25; r++) {
        #pragma HLS LOOP_FLATTEN
        for(int q = 0; q < 20; q++) {
            #pragma HLS PIPELINE II=1
            int pp_idx = q % 2;
            int next_pp_idx = (q+1) % 2;

            if(q < 19) {
                INIT_NEXT_SUM: for(int p = 0; p < 30; p++) {
                    #pragma HLS UNROLL
                    sum_buffer[next_pp_idx][p] = 0.0;
                }
            }

            INIT_SUM: for(int p = 0; p < 30; p++) {
                #pragma HLS UNROLL
                sum_buffer[pp_idx][p] = 0.0;
            }

            for(int s_tile = 0; s_tile < 30; s_tile += TILE_S) {
                #pragma HLS UNROLL factor=5
                double local_A[TILE_S];
                #pragma HLS ARRAY_PARTITION variable=local_A complete dim=1
                process_A_tile(r, q, s_tile, A, local_A);

                for(int p_tile = 0; p_tile < 30; p_tile += TILE_P) {
                    #pragma HLS PIPELINE II=1
                    double local_C4[TILE_S][TILE_P];
                    load_C4_tile(s_tile, p_tile, C4, local_C4);

                    double partial_sum[TILE_P] = {0};
                    #pragma HLS ARRAY_PARTITION variable=partial_sum complete dim=1
                    compute_partial_sum(local_A, local_C4, partial_sum);

                    ACCUM: for(int p = 0; p < TILE_P; p++) {
                        #pragma HLS UNROLL
                        sum_buffer[pp_idx][p_tile + p] += partial_sum[p];
                    }
                }
            }

            WRITE_BACK: for(int p = 0; p < 30; p++) {
                #pragma HLS UNROLL
                A[r][q][p] = sum_buffer[pp_idx][p];
            }
        }
    }
}