// file: conv2d_fast_sw.cpp
#include <hls_stream.h>
#include <ap_int.h>

#define WIDTH  1920
#define HEIGHT 1080
#define K      3

typedef ap_uint<8>  pixel_t;
typedef ap_uint<32> acc_t;

void conv2d_synth(
    hls::stream<pixel_t> &in,
    hls::stream<pixel_t> &out,
    pixel_t              kernel[K][K]
) {
    static pixel_t linebuf[K][WIDTH];
    for (int r = 0; r < HEIGHT; r++) {
        for (int c = 0; c < WIDTH; c++) {
            // Shift lines in software
            for (int i = K-1; i > 0; --i)
                linebuf[i][c] = linebuf[i-1][c];
            linebuf[0][c] = in.read();

            acc_t sum = 0;
            // 3×3 convolution
            for (int i = 0; i < K; i++) {
                for (int j = 0; j < K; j++) {
                    int cc = c + j - (K/2);
                    if (cc >= 0 && cc < WIDTH)
                        sum += linebuf[i][cc] * kernel[i][j];
                }
            }
            out.write((pixel_t)(sum >> 4));
        }
    }
}
