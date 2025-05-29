#include <stddef.h>
#include <ap_fixed.h>

#define K_H      2    // kernel height
#define K_W      2    // kernel width
#define STRIDE_H 2    // vertical stride
#define STRIDE_W 2    // horizontal stride

#define MAX_C    64
#define MAX_H_IN 224
#define MAX_W_IN 224

typedef ap_fixed<16, 5> data_t;

/**
 * Performs global (no‐tile) max‐pooling:
 *   For each channel c in [0..C), and each output y in [0..H_OUT), x in [0..W_OUT),
 *   looks at the window of input pixels:
 *     row = y*STRIDE_H + kh,   kh=0..K_H-1
 *     col = x*STRIDE_W + kw,   kw=0..K_W-1
 *   and picks the maximum.
 *
 * Port names and signature unchanged.
 */
void max_pool(
    int C, int H_IN, int W_IN,
    data_t input[MAX_C][MAX_H_IN][MAX_W_IN],
    int H_OUT, int W_OUT,
    data_t output[MAX_C][MAX_H_IN][MAX_W_IN]   // only [C][0..H_OUT)[0..W_OUT) are written
) {
    for (int c = 0; c < C; ++c) {
        for (int y = 0; y < H_OUT; ++y) {
            for (int x = 0; x < W_OUT; ++x) {
                // Initialize to the first element in the pooling window
                int in_row0 = y * STRIDE_H;
                int in_col0 = x * STRIDE_W;
                data_t max_val = input[c][in_row0][in_col0];

                // Scan the K_H × K_W window
                for (int kh = 0; kh < K_H; ++kh) {
                    for (int kw = 0; kw < K_W; ++kw) {
                        int r = in_row0 + kh;
                        int col = in_col0 + kw;
                        data_t v = input[c][r][col];
                        if (v > max_val) {
                            max_val = v;
                        }
                    }
                }

                // Write the pooled result
                output[c][y][x] = max_val;
            }
        }
    }
}
