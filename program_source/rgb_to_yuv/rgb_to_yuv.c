// ---- file: rgb_to_yuv.cpp ----
#include <ap_int.h>

#define WIDTH 1024
#define HEIGHT 1024

void rgb_to_yuv(ap_uint<8> R[HEIGHT][WIDTH], ap_uint<8> G[HEIGHT][WIDTH], ap_uint<8> B[HEIGHT][WIDTH], ap_uint<8> Y[HEIGHT][WIDTH], ap_uint<8> U[HEIGHT][WIDTH], ap_uint<8> V[HEIGHT][WIDTH]) {
#pragma HLS ARRAY_PARTITION variable=V type=cyclic dim=2 factor=1
#pragma HLS ARRAY_PARTITION variable=V type=cyclic dim=1 factor=4
#pragma HLS ARRAY_PARTITION variable=U type=cyclic dim=2 factor=8
#pragma HLS ARRAY_PARTITION variable=U type=cyclic dim=1 factor=4
#pragma HLS ARRAY_PARTITION variable=Y type=cyclic dim=2 factor=8
#pragma HLS ARRAY_PARTITION variable=Y type=cyclic dim=1 factor=2
#pragma HLS ARRAY_PARTITION variable=B type=cyclic dim=2 factor=2
#pragma HLS ARRAY_PARTITION variable=B type=cyclic dim=1 factor=16
#pragma HLS ARRAY_PARTITION variable=G type=cyclic dim=2 factor=2
#pragma HLS ARRAY_PARTITION variable=G type=cyclic dim=1 factor=8
#pragma HLS ARRAY_PARTITION variable=R type=cyclic dim=2 factor=2
#pragma HLS ARRAY_PARTITION variable=R type=cyclic dim=1 factor=4
    for (int i = 0; i < HEIGHT; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        for (int j = 0; j < WIDTH; j++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=8
            ap_uint<8> r = R[i][j];
            ap_uint<8> g = G[i][j];
            ap_uint<8> b = B[i][j];

            ap_uint<8> y = (ap_uint<8>)(0.299 * r + 0.587 * g + 0.114 * b);
            ap_uint<8> u = (ap_uint<8>)(-0.14713 * r - 0.28886 * g + 0.436 * b + 128);
            ap_uint<8> v = (ap_uint<8>)(0.615 * r - 0.51499 * g - 0.10001 * b + 128);

            Y[i][j] = y;
            U[i][j] = u;
            V[i][j] = v;
        }
    }
}

// Top function name: rgb_to_yuv
