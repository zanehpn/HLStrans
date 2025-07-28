// sliding_hls.c
#include <stdint.h>
#define NMAX 1024
#define WMAX  64

void movavg(int n, float in[NMAX], int win, float out[NMAX]) {
    #pragma HLS INTERFACE bram      port=in
    #pragma HLS INTERFACE bram      port=out
    #pragma HLS INTERFACE s_axilite port=n    bundle=ctrl
    #pragma HLS INTERFACE s_axilite port=win  bundle=ctrl
    #pragma HLS INTERFACE s_axilite port=return bundle=ctrl
    #pragma HLS PIPELINE II=1

    static float buf[WMAX];
    #pragma HLS ARRAY_PARTITION variable=buf complete
    int  cnt = 0, ptr = 0;
    float sum = 0;

    for (int i = 0; i < n; ++i) {
        #pragma HLS PIPELINE II=1
        float v = in[i];
        sum += v;
        buf[ptr] = v;
        ptr = (ptr+1) % win;
        if (cnt >= win) {
            sum -= buf[ptr];
        } else {
            cnt++;
        }
        out[i] = sum / cnt;
    }
}
