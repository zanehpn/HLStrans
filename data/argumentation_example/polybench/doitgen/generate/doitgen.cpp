#include "doitgen.h"

void load_C4(double C4_buffer[30][30], double C4[30][30]) {
    for(int s=0; s<30; s++) {
        #pragma HLS PIPELINE II=1
        for(int p=0; p<30; p++) {
            #pragma HLS UNROLL factor=6
            C4_buffer[s][p] = C4[s][p];
        }
    }
}

void compute_tile(int r, int q, double A[25][20][30], double C4_buffer[30][30], double sum_buffer[30]) {
    #pragma HLS INLINE off
    double pp_buffer[2][TILE_SIZE][30];
    #pragma HLS ARRAY_PARTITION variable=pp_buffer complete dim=1
    #pragma HLS ARRAY_PARTITION variable=pp_buffer complete dim=2
    #pragma HLS ARRAY_PARTITION variable=pp_buffer cyclic factor=6 dim=3

    bool bank = false;
    for(int s_tile=0; s_tile<30; s_tile+=TILE_SIZE) {
        #pragma HLS PIPELINE II=1
        
        // Ping-pong buffer loading
        double* current_A = A[r][q][s_tile];
        for(int s=0; s<TILE_SIZE; s++) {
            #pragma HLS UNROLL
            double a_val = current_A[s];
            for(int p=0; p<30; p++) {
                #pragma HLS UNROLL factor=6
                pp_buffer[!bank][s][p] = a_val * C4_buffer[s_tile+s][p];
            }
        }

        // Parallel accumulation
        for(int s=0; s<TILE_SIZE; s++) {
            #pragma HLS UNROLL
            for(int p=0; p<30; p++) {
                #pragma HLS UNROLL factor=6
                sum_buffer[p] += pp_buffer[bank][s][p];
            }
        }
        
        bank = !bank;
    }
}

void store_result(int r, int q, double A[25][20][30], double sum_buffer[30]) {
    for(int p=0; p<30; p++) {
        #pragma HLS PIPELINE II=1
        #pragma HLS UNROLL factor=6
        A[r][q][p] = sum_buffer[p];
    }
}

void doitgen(int nr, int nq, int np, double A[25][20][30], double C4[30][30], double sum[30]) {
    #pragma HLS INTERFACE m_axi port=A depth=15000
    #pragma HLS INTERFACE m_axi port=C4 depth=900
    #pragma HLS INTERFACE m_axi port=sum depth=30
    #pragma HLS ARRAY_PARTITION variable=C4 cyclic factor=6 dim=2
    #pragma HLS ARRAY_PARTITION variable=A cyclic factor=6 dim=3

    double C4_buffer[30][30];
    #pragma HLS ARRAY_PARTITION variable=C4_buffer cyclic factor=6 dim=2
    load_C4(C4_buffer, C4);

    for(int r=0; r<25; r++) {
        for(int q=0; q<20; q++) {
            #pragma HLS PIPELINE II=1
            #pragma HLS LATENCY min=1 max=1
            double sum_buffer[30] = {0};
            #pragma HLS ARRAY_PARTITION variable=sum_buffer cyclic factor=6

            compute_tile(r, q, A, C4_buffer, sum_buffer);
            store_result(r, q, A, sum_buffer);
        }
    }
}