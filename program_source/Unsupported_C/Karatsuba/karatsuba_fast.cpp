#include <ap_int.h>
#define W       32      // 32 位块
#define NLIMBS  8       // 8 个 limbs => 256 位

void karatsuba(ap_uint<W> A[NLIMBS],
                ap_uint<W> B[NLIMBS],
                ap_uint<2*W>  C[2*NLIMBS]) {
    #pragma HLS INTERFACE m_axi depth=NLIMBS  port=A bundle=gmem0
    #pragma HLS INTERFACE m_axi depth=NLIMBS  port=B bundle=gmem1
    #pragma HLS INTERFACE m_axi depth=2*NLIMBS port=C bundle=gmem2

    for (int i = 0; i < 2*NLIMBS; ++i) {
      #pragma HLS UNROLL factor=2
      C[i] = 0;
    }
    for (int i = 0; i < NLIMBS; ++i) {
        for (int j = 0; j < NLIMBS; ++j) {
            #pragma HLS PIPELINE II=1
            ap_uint<2*W> prod = A[i] * B[j];
            C[i+j]   += prod.range(W-1,0);
            C[i+j+1] += prod.range(2*W-1,W);
        }
    }
}
