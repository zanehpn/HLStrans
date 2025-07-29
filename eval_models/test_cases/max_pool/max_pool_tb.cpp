// maxpool_tb.cpp
#include <iostream>
#include <vector>
#include <cstdlib>
#include <ctime>
#include <cmath>
#include <hls_math.h>
#include "max_pool.h"

// --- CPU reference maxpool on full tensor ---
void cpu_maxpool(int C, int H_IN, int W_IN,
                 data_t input[MAX_C][MAX_H_IN][MAX_W_IN],
                 int H_OUT, int W_OUT,
                 data_t output[MAX_C][MAX_H_IN][MAX_W_IN]) {
    for (int c = 0; c < C; ++c) {
        for (int i = 0; i < H_OUT; ++i) {
            for (int j = 0; j < W_OUT; ++j) {
                data_t m = input[c][i*STRIDE_H][j*STRIDE_W];
                for (int kh = 0; kh < K_H; ++kh) {
                    for (int kw = 0; kw < K_W; ++kw) {
                        int r = i*STRIDE_H + kh;
                        int col = j*STRIDE_W + kw;
                        m = std::max(m, input[c][r][col]);
                    }
                }
                output[c][i][j] = m;
            }
        }
    }
}

int main() {
    std::srand(std::time(nullptr));
    // test dimensions
    const int C     = 3;
    const int H_IN  = 6;
    const int W_IN  = 6;
    const int H_OUT = (H_IN - K_H)/STRIDE_H + 1;
    const int W_OUT = (W_IN - K_W)/STRIDE_W + 1;

    static data_t in[MAX_C][MAX_H_IN][MAX_W_IN];
    static data_t out_hw[MAX_C][MAX_H_IN][MAX_W_IN];
    static data_t out_ref[MAX_C][MAX_H_IN][MAX_W_IN];

    // Fill input with random values [0,1)
    for (int c = 0; c < C; ++c)
    for (int i = 0; i < H_IN; ++i)
    for (int j = 0; j < W_IN; ++j)
        in[c][i][j] = static_cast<data_t>(std::rand())/RAND_MAX;

    // Run HLS tiled maxpool
    max_pool(C, H_IN, W_IN, in, H_OUT, W_OUT, out_hw);

    // Run CPU reference
    cpu_maxpool(C, H_IN, W_IN, in, H_OUT, W_OUT, out_ref);

    // Compare
    bool pass = true;
    for (int c = 0; c < C; ++c) {
        for (int i = 0; i < H_OUT; ++i) {
            for (int j = 0; j < W_OUT; ++j) {
                data_t a = out_hw[c][i][j];
                data_t b = out_ref[c][i][j];
                if (hls::fabs(a - b) > 1e-6f) {
                    std::cout << "Mismatch c="<<c<<" i="<<i<<" j="<<j
                              << " hw="<<a<<" ref="<<b<<"\n";
                    pass = false;
                }
            }
        }
    }

    std::cout << (pass ? "PASS\n" : "FAIL\n");
    return pass ? 0 : 1;
}
