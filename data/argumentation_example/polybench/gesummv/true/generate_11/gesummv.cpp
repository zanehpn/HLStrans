#include "gesummv.h"

void compute_tmp1(DATA_TYPE alpha, DATA_TYPE buff_A[N][N], DATA_TYPE buff_x[N], DATA_TYPE tmp1[N]) {
    for (int i = 0; i < N; i++) {
        #pragma HLS UNROLL factor=TILE_SIZE
        DATA_TYPE sum = 0;
        for (int j = 0; j < N; j++) {
            #pragma HLS UNROLL factor=TILE_SIZE
            sum += alpha * buff_A[i][j] * buff_x[j];
        }
        tmp1[i] = sum;
    }
}

void compute_tmp2(DATA_TYPE beta, DATA_TYPE buff_B[N][N], DATA_TYPE buff_x[N], DATA_TYPE tmp2[N]) {
    for (int i = 0; i < N; i++) {
        #pragma HLS UNROLL factor=TILE_SIZE
        DATA_TYPE sum = 0;
        for (int j = 0; j < N; j++) {
            #pragma HLS UNROLL factor=TILE_SIZE
            sum += beta * buff_B[i][j] * buff_x[j];
        }
        tmp2[i] = sum;
    }
}

void gesummv(DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE A[N][N], DATA_TYPE B[N][N], DATA_TYPE x[N], DATA_TYPE y_out[N]) {
    #pragma HLS INTERFACE m_axi port=A offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=B offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=x offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=y_out offset=slave bundle=gmem

    #pragma HLS ARRAY_PARTITION variable=A cyclic factor=TILE_SIZE dim=2
    #pragma HLS ARRAY_PARTITION variable=B cyclic factor=TILE_SIZE dim=2
    #pragma HLS ARRAY_PARTITION variable=x cyclic factor=TILE_SIZE
    #pragma HLS ARRAY_PARTITION variable=y_out cyclic factor=TILE_SIZE

    DATA_TYPE buff_A[N][N];
    DATA_TYPE buff_B[N][N];
    DATA_TYPE buff_x[N];
    DATA_TYPE buff_y_out[N];
    DATA_TYPE tmp1[N];
    DATA_TYPE tmp2[N];

    for (int i = 0; i < N; i++) {
        #pragma HLS UNROLL factor=TILE_SIZE
        buff_x[i] = x[i];
        tmp1[i] = 0;
        tmp2[i] = 0;
        buff_y_out[i] = 0;
        for (int j = 0; j < N; j++) {
            #pragma HLS UNROLL factor=TILE_SIZE
            buff_A[i][j] = A[i][j];
            buff_B[i][j] = B[i][j];
        }
    }

    compute_tmp1(alpha, buff_A, buff_x, tmp1);
    compute_tmp2(beta, buff_B, buff_x, tmp2);

    for (int i = 0; i < N; i++) {
        #pragma HLS UNROLL factor=TILE_SIZE
        buff_y_out[i] = tmp1[i] + tmp2[i];
    }

    for (int i = 0; i < N; i++) {
        #pragma HLS UNROLL factor=TILE_SIZE
        y_out[i] = buff_y_out[i];
    }
}