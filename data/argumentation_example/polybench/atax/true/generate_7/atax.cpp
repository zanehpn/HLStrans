#include "atax.h"

void compute_Ax_tiled(DATA_TYPE A[N][N], DATA_TYPE x[N], DATA_TYPE temp[N]) {
    #pragma HLS INLINE
    for (int i = 0; i < N; i++) {
        #pragma HLS PIPELINE II=1
        temp[i] = 0;
        for (int j = 0; j < N; j++) {
            temp[i] += A[i][j] * x[j];
        }
    }
}

void compute_AT_temp_tiled(DATA_TYPE A[N][N], DATA_TYPE temp[N], DATA_TYPE y_out[N]) {
    #pragma HLS INLINE
    for (int j = 0; j < N; j++) {
        #pragma HLS PIPELINE II=1
        y_out[j] = 0;
        for (int i = 0; i < N; i++) {
            y_out[j] += A[i][j] * temp[i];
        }
    }
}

void atax(DATA_TYPE A[N][N], DATA_TYPE x[N], DATA_TYPE y_out[N]) {
    #pragma HLS INTERFACE m_axi port=A offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=x offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=y_out offset=slave bundle=gmem
    #pragma HLS INTERFACE s_axilite port=A bundle=control
    #pragma HLS INTERFACE s_axilite port=x bundle=control
    #pragma HLS INTERFACE s_axilite port=y_out bundle=control
    #pragma HLS INTERFACE s_axilite port=return bundle=control

    DATA_TYPE temp[N] = {0};
    #pragma HLS ARRAY_PARTITION variable=temp cyclic factor=TILE_SIZE dim=1
    #pragma HLS ARRAY_PARTITION variable=y_out cyclic factor=TILE_SIZE dim=1

    compute_Ax_tiled(A, x, temp);
    compute_AT_temp_tiled(A, temp, y_out);
}