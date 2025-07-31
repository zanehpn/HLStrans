#include "atax.h"

void read_inputs(DATA_TYPE A[N][N], DATA_TYPE x[N], DATA_TYPE buff_A[N][N], DATA_TYPE buff_x[N]) {
    #pragma HLS INLINE
    #pragma HLS ARRAY_PARTITION variable=buff_A cyclic factor=8 dim=2
    #pragma HLS ARRAY_PARTITION variable=buff_x cyclic factor=8

    for (int i = 0; i < N; i++) {
        #pragma HLS PIPELINE II=1
        buff_x[i] = x[i];
        for (int j = 0; j < N; j++) {
            buff_A[i][j] = A[i][j];
        }
    }
}

void compute_tmp1(DATA_TYPE buff_A[N][N], DATA_TYPE buff_x[N], hls::stream<DATA_TYPE>& tmp1_stream) {
    #pragma HLS INLINE
    #pragma HLS ARRAY_PARTITION variable=buff_A cyclic factor=8 dim=2
    #pragma HLS ARRAY_PARTITION variable=buff_x cyclic factor=8

    for (int ii = 0; ii < N; ii += TILE_SIZE) {
        DATA_TYPE local_tmp1[TILE_SIZE] = {0};
        for (int jj = 0; jj < N; jj += TILE_SIZE) {
            for (int i = 0; i < TILE_SIZE; i++) {
                #pragma HLS PIPELINE II=1
                for (int j = 0; j < TILE_SIZE; j++) {
                    local_tmp1[i] += buff_A[ii+i][jj+j] * buff_x[jj+j];
                }
            }
        }
        for (int i = 0; i < TILE_SIZE; i++) {
            #pragma HLS PIPELINE II=1
            tmp1_stream.write(local_tmp1[i]);
        }
    }
}

void compute_y_out(DATA_TYPE buff_A[N][N], hls::stream<DATA_TYPE>& tmp1_stream, DATA_TYPE buff_y_out[N]) {
    #pragma HLS INLINE
    #pragma HLS ARRAY_PARTITION variable=buff_A cyclic factor=8 dim=2
    #pragma HLS ARRAY_PARTITION variable=buff_y_out cyclic factor=8

    DATA_TYPE tmp1[N];
    for (int i = 0; i < N; i++) {
        #pragma HLS PIPELINE II=1
        tmp1[i] = tmp1_stream.read();
    }

    for (int ii = 0; ii < N; ii += TILE_SIZE) {
        for (int jj = 0; jj < N; jj += TILE_SIZE) {
            DATA_TYPE local_y_out[TILE_SIZE] = {0};
            for (int i = 0; i < TILE_SIZE; i++) {
                #pragma HLS PIPELINE II=1
                for (int j = 0; j < TILE_SIZE; j++) {
                    local_y_out[j] += buff_A[ii+i][jj+j] * tmp1[ii+i];
                }
            }
            for (int j = 0; j < TILE_SIZE; j++) {
                #pragma HLS PIPELINE II=1
                buff_y_out[jj+j] += local_y_out[j];
            }
        }
    }
}

void write_output(DATA_TYPE buff_y_out[N], DATA_TYPE y_out[N]) {
    #pragma HLS INLINE
    #pragma HLS ARRAY_PARTITION variable=buff_y_out cyclic factor=8

    for (int i = 0; i < N; i++) {
        #pragma HLS PIPELINE II=1
        y_out[i] = buff_y_out[i];
    }
}

void atax(DATA_TYPE A[N][N], DATA_TYPE x[N], DATA_TYPE y_out[N]) {
    #pragma HLS INTERFACE m_axi port=A offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=x offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=y_out offset=slave bundle=gmem
    #pragma HLS INTERFACE s_axilite port=return bundle=control

    #pragma HLS DATAFLOW

    DATA_TYPE buff_A[N][N];
    DATA_TYPE buff_x[N];
    DATA_TYPE buff_y_out[N] = {0};
    hls::stream<DATA_TYPE> tmp1_stream;
    #pragma HLS STREAM variable=tmp1_stream depth=N

    read_inputs(A, x, buff_A, buff_x);
    compute_tmp1(buff_A, buff_x, tmp1_stream);
    compute_y_out(buff_A, tmp1_stream, buff_y_out);
    write_output(buff_y_out, y_out);
}