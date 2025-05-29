#include <hls_stream.h>
#define MAX_C 8
#define MAX_L 32
#define MAX_N 1024

void multi_fir(
    hls::stream<float> in[MAX_C],
    int N,
    float coef[MAX_L],
    hls::stream<float> out[MAX_C]) 
{
    FIR_CH: for (int c = 0; c < MAX_C; ++c) {
        #pragma HLS UNROLL
        float shift_reg[MAX_L];
        #pragma HLS ARRAY_PARTITION variable=shift_reg complete
        for (int i = 0; i < N; ++i) {
            #pragma HLS PIPELINE II=1
            float x = in[c].read();
            for (int j = MAX_L-1; j > 0; --j)
                shift_reg[j] = shift_reg[j-1];
            shift_reg[0] = x;
            float acc = 0;
            for (int j = 0; j < MAX_L; ++j)
                acc += shift_reg[j] * coef[j];
            out[c].write(acc);
        }
    }
}
