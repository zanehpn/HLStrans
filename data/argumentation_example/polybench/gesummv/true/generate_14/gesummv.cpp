#include "gesummv.h"

void load_data(DATA_TYPE A[N][N], DATA_TYPE B[N][N], DATA_TYPE x[N], 
               DATA_TYPE buff_A[N][N], DATA_TYPE buff_B[N][N], DATA_TYPE buff_x[N]) {
    #pragma HLS INLINE

    for (int i = 0; i < N; i++) {
        #pragma HLS PIPELINE II=1
        buff_x[i] = x[i];
        for (int j = 0; j < N; j++) {
            #pragma HLS UNROLL factor=TILE_SIZE
            buff_A[i][j] = A[i][j];
            buff_B[i][j] = B[i][j];
        }
    }
}

void compute_tmp1(DATA_TYPE alpha, DATA_TYPE buff_A[N][N], DATA_TYPE buff_x[N], DATA_TYPE tmp1[N]) {
    #pragma HLS INLINE

    for (int i = 0; i < N; i++) {
        #pragma HLS PIPELINE II=1
        tmp1[i] = 0;
        for (int j = 0; j < N; j++) {
            #pragma HLS UNROLL factor=TILE_SIZE
            tmp1[i] += alpha * buff_A[i][j] * buff_x[j];
        }
    }
}

void compute_tmp2(DATA_TYPE beta, DATA_TYPE buff_B[N][N], DATA_TYPE buff_x[N], DATA_TYPE tmp2[N]) {
    #pragma HLS INLINE

    for (int i = 0; i < N; i++) {
        #pragma HLS PIPELINE II=1
        tmp2[i] = 0;
        for (int j = 0; j < N; j++) {
            #pragma HLS UNROLL factor=TILE_SIZE
            tmp2[i] += beta * buff_B[i][j] * buff_x[j];
        }
    }
}

void store_result(DATA_TYPE tmp1[N], DATA_TYPE tmp2[N], DATA_TYPE y_out[N]) {
    #pragma HLS INLINE

    for (int i = 0; i < N; i++) {
        #pragma HLS PIPELINE II=1
        y_out[i] = tmp1[i] + tmp2[i];
    }
}

void gesummv(DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE A[N][N], DATA_TYPE B[N][N], DATA_TYPE x[N], DATA_TYPE y_out[N]) {
    #pragma HLS INTERFACE m_axi port=A offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=B offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=x offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=y_out offset=slave bundle=gmem
    #pragma HLS INTERFACE s_axilite port=alpha bundle=control
    #pragma HLS INTERFACE s_axilite port=beta bundle=control
    #pragma HLS INTERFACE s_axilite port=return bundle=control

    #pragma HLS ARRAY_PARTITION variable=A cyclic factor=TILE_SIZE dim=2
    #pragma HLS ARRAY_PARTITION variable=B cyclic factor=TILE_SIZE dim=2
    #pragma HLS ARRAY_PARTITION variable=x cyclic factor=TILE_SIZE

    DATA_TYPE buff_A[N][N];
    DATA_TYPE buff_B[N][N];
    DATA_TYPE buff_x[N];
    DATA_TYPE tmp1[N];
    DATA_TYPE tmp2[N];

    load_data(A, B, x, buff_A, buff_B, buff_x);
    compute_tmp1(alpha, buff_A, buff_x, tmp1);
    compute_tmp2(beta, buff_B, buff_x, tmp2);
    store_result(tmp1, tmp2, y_out);
}