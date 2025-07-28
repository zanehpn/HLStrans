// median_hls.c
#include <stdint.h>
#define W  640
#define H  480

void median_filter(int in[W*H], int out[W*H]) {
    #pragma HLS INTERFACE bram port=in
    #pragma HLS INTERFACE bram port=out
    #pragma HLS PIPELINE

    for (int y = 2; y < H-2; ++y) {
      for (int x = 2; x < W-2; ++x) {
        #pragma HLS PIPELINE II=1
        int buf[25], tmp;
        int idx=0;
        for (int dy=-2; dy<=2; ++dy)
          for (int dx=-2; dx<=2; ++dx)
            buf[idx++] = in[(y+dy)*W + (x+dx)];
        for (int i=0; i<13; ++i) {
          for (int j=i+1; j<25; ++j) {
            if (buf[j] < buf[i]) {
              tmp = buf[i]; buf[i] = buf[j]; buf[j] = tmp;
            }
          }
        }
        out[y*W + x] = buf[12];
      }
    }
}
