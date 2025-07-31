#include "gesummv.h"

void init_buffers(DATA_TYPE x[N], DATA_TYPE buff_x[N], DATA_TYPE tmp1[N], DATA_TYPE tmp2[N], DATA_TYPE buff_y_out[N]) {
    for (int i = 0; i < N; i++) {
        #pragma HLS UNROLL
        buff_x[i] = x[i];
        tmp1[i] = 0;
        tmp2[i] = 0;
        buff_y_out[i] = 0;
    }
}

void load_matrices(DATA_TYPE A[N][N], DATA_TYPE B[N][N], DATA_TYPE buff_A[N][N], DATA_TYPE buff_B[N][N]) {
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            #pragma HLS UNROLL
            buff_A[i][j] = A[i][j];
            buff_B[i][j] = B[i][j];
        }
    }
}

void compute_tmp1(DATA_TYPE alpha, DATA_TYPE buff_A[N][N], DATA_TYPE buff_x[N], DATA_TYPE tmp1[N]) {
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            #pragma HLS UNROLL
            tmp1[i] += alpha * buff_A[i][j] * buff_x[j];
        }
    }
}

void compute_tmp2(DATA_TYPE beta, DATA_TYPE buff_B[N][N], DATA_TYPE buff_x[N], DATA_TYPE tmp2[N]) {
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            #pragma HLS UNROLL
            tmp2[i] += beta * buff_B[i][j] * buff_x[j];
        }
    }
}

void compute_y_out(DATA_TYPE tmp1[N], DATA_TYPE tmp2[N], DATA_TYPE buff_y_out[N]) {
    for (int i = 0; i < N; i++) {
        #pragma HLS UNROLL
        buff_y_out[i] = tmp1[i] + tmp2[i];
    }
}

void write_output(DATA_TYPE buff_y_out[N], DATA_TYPE y_out[N]) {
    for (int i = 0; i < N; i++) {
        #pragma HLS UNROLL
        y_out[i] = buff_y_out[i];
    }
}

void gesummv(DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE A[N][N], DATA_TYPE B[N][N], DATA_TYPE x[N], DATA_TYPE y_out[N]) {
    #pragma HLS ARRAY_PARTITION variable=A complete dim=2
    #pragma HLS ARRAY_PARTITION variable=B complete dim=2
    #pragma HLS ARRAY_PARTITION variable=x complete
    #pragma HLS ARRAY_PARTITION variable=y_out complete

    DATA_TYPE buff_A[N][N];
    DATA_TYPE buff_B[N][N];
    DATA_TYPE buff_x[N];
    DATA_TYPE buff_y_out[N];
    DATA_TYPE tmp1[N];
    DATA_TYPE tmp2[N];

    init_buffers(x, buff_x, tmp1, tmp2, buff_y_out);
    load_matrices(A, B, buff_A, buff_B);
    compute_tmp1(alpha, buff_A, buff_x, tmp1);
    compute_tmp2(beta, buff_B, buff_x, tmp2);
    compute_y_out(tmp1, tmp2, buff_y_out);
    write_output(buff_y_out, y_out);
}