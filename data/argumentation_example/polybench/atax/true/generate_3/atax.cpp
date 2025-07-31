#include "atax.h"

void atax(DATA_TYPE A[N][N], DATA_TYPE x[N], DATA_TYPE y_out[N]) {
    #pragma HLS INTERFACE m_axi port=A offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=x offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=y_out offset=slave bundle=gmem
    #pragma HLS INTERFACE s_axilite port=A bundle=control
    #pragma HLS INTERFACE s_axilite port=x bundle=control
    #pragma HLS INTERFACE s_axilite port=y_out bundle=control
    #pragma HLS INTERFACE s_axilite port=return bundle=control

    DATA_TYPE y_prev[N] = {0};

    for (int i = 0; i < N; i++) {
        #pragma HLS PIPELINE
        DATA_TYPE temp = 0;
        for (int j = 0; j < N; j++) {
            #pragma HLS UNROLL
            temp += A[i][j] * x[j];
        }
        for (int j = 0; j < N; j++) {
            #pragma HLS UNROLL
            y_out[j] += A[i][j] * temp;
        }
    }
}