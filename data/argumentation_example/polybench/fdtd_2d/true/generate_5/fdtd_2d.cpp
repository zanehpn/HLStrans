#include "fdtd_2d.h"

static void initialize_buffers(double ey[60][80], double ex[60][80], double hz[60][80],
                              double ey_buf[2][60][80], double ex_buf[2][60][80], double hz_buf[2][60][80]) {
    for (int i = 0; i < 60; i++) {
        #pragma HLS LOOP_MERGE force
        for (int j = 0; j < 80; j++) {
            #pragma HLS PIPELINE II=1
            #pragma HLS UNROLL factor=8
            ey_buf[0][i][j] = ey[i][j];
            ex_buf[0][i][j] = ex[i][j];
            hz_buf[0][i][j] = hz[i][j];
            ey_buf[1][i][j] = ey[i][j];
            ex_buf[1][i][j] = ex[i][j];
            hz_buf[1][i][j] = hz[i][j];
        }
    }
}

static void process_ey(int t, double _fict_[40], double ey_buf[2][60][80],
                      double hz_buf[2][60][80], int in_idx, int out_idx) {
    for (int j = 0; j < 80; j++) {
        #pragma HLS PIPELINE II=1
        #pragma HLS UNROLL factor=8
        ey_buf[out_idx][0][j] = _fict_[t];
    }

    for (int i = 1; i < 60; i++) {
        #pragma HLS PIPELINE II=1
        for (int j = 0; j < 80; j++) {
            #pragma HLS UNROLL factor=8
            ey_buf[out_idx][i][j] = ey_buf[in_idx][i][j] - 0.5*(hz_buf[in_idx][i][j] - hz_buf[in_idx][i-1][j]);
        }
    }
}

static void process_ex(double ex_buf[2][60][80], double hz_buf[2][60][80],
                      int in_idx, int out_idx) {
    for (int i = 0; i < 60; i++) {
        #pragma HLS PIPELINE II=1
        for (int j = 1; j < 80; j++) {
            #pragma HLS UNROLL factor=8
            ex_buf[out_idx][i][j] = ex_buf[in_idx][i][j] - 0.5*(hz_buf[in_idx][i][j] - hz_buf[in_idx][i][j-1]);
        }
    }
}

static void process_hz(double ex_buf[2][60][80], double ey_buf[2][60][80],
                      double hz_buf[2][60][80], int in_idx, int out_idx) {
    for (int i = 0; i < 59; i++) {
        #pragma HLS PIPELINE II=1
        for (int j = 0; j < 79; j++) {
            #pragma HLS UNROLL factor=4
            hz_buf[out_idx][i][j] = hz_buf[in_idx][i][j] - 0.7*(
                ex_buf[out_idx][i][j+1] - ex_buf[out_idx][i][j] +
                ey_buf[out_idx][i+1][j] - ey_buf[out_idx][i][j]
            );
        }
    }
}

static void write_back(double ex[60][80], double ey[60][80], double hz[60][80],
                      double ex_buf[2][60][80], double ey_buf[2][60][80],
                      double hz_buf[2][60][80], int final_idx) {
    for (int i = 0; i < 60; i++) {
        #pragma HLS LOOP_MERGE force
        for (int j = 0; j < 80; j++) {
            #pragma HLS PIPELINE II=1
            #pragma HLS UNROLL factor=8
            ex[i][j] = ex_buf[final_idx][i][j];
            ey[i][j] = ey_buf[final_idx][i][j];
            hz[i][j] = hz_buf[final_idx][i][j];
        }
    }
}

void fdtd_2d(int tmax, int nx, int ny, double ex[60][80], double ey[60][80], double hz[60][80], double _fict_[40]) {
    #pragma HLS INTERFACE m_axi port=ex bundle=gmem
    #pragma HLS INTERFACE m_axi port=ey bundle=gmem
    #pragma HLS INTERFACE m_axi port=hz bundle=gmem
    #pragma HLS INTERFACE m_axi port=_fict_ bundle=gmem

    double ey_buf[2][60][80];
    #pragma HLS ARRAY_PARTITION variable=ey_buf cyclic factor=8 dim=3
    double ex_buf[2][60][80];
    #pragma HLS ARRAY_PARTITION variable=ex_buf cyclic factor=8 dim=3
    double hz_buf[2][60][80];
    #pragma HLS ARRAY_PARTITION variable=hz_buf cyclic factor=8 dim=3
    int buf_idx = 0;

    initialize_buffers(ey, ex, hz, ey_buf, ex_buf, hz_buf);

    for (int t = 0; t < 40; t++) {
        #pragma HLS LOOP_TRIPCOUNT min=40 max=40
        int in_idx = buf_idx;
        int out_idx = 1 - buf_idx;

        process_ey(t, _fict_, ey_buf, hz_buf, in_idx, out_idx);
        process_ex(ex_buf, hz_buf, in_idx, out_idx);
        process_hz(ex_buf, ey_buf, hz_buf, in_idx, out_idx);

        buf_idx = out_idx;
    }

    write_back(ex, ey, hz, ex_buf, ey_buf, hz_buf, buf_idx);
}