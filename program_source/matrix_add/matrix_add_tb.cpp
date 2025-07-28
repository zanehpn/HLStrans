#include <ap_fixed.h>
#include <cstdio>
#include <cstdlib>
#include "hls_math.h"

#define MAX_C  64
#define MAX_H 224
#define MAX_W 224

// Bring in your kernel’s signature
void matrix_add(
  int C, int H, int W,
  ap_fixed<16,5> in1[MAX_C][MAX_H][MAX_W],
  ap_fixed<16,5> in2[MAX_C][MAX_H][MAX_W],
  ap_fixed<16,5> out[MAX_C][MAX_H][MAX_W]
);

int main() {
    // 1) Test dimensions
    const int C = 32, H = 64, W = 64;

    // 2) Allocate arrays
    static ap_fixed<16,5> in1[MAX_C][MAX_H][MAX_W];
    static ap_fixed<16,5> in2[MAX_C][MAX_H][MAX_W];
    static ap_fixed<16,5> out_hw[MAX_C][MAX_H][MAX_W];
    static ap_fixed<16,5> gold[MAX_C][MAX_H][MAX_W];

    // 3) Initialize with fixed seed for reproducibility
    std::srand(123);
    for (int c = 0; c < C; c++) {
        for (int h = 0; h < H; h++) {
            for (int w = 0; w < W; w++) {
                // Generate inputs in [0.0, 7.9] to guarantee no > max overflow
                float a = (std::rand() % 80) / 10.0f;  // 0.0,0.1,…,7.9
                float b = (std::rand() % 80) / 10.0f;  // 0.0,0.1,…,7.9
                in1[c][h][w] = a;
                in2[c][h][w] = b;
                gold[c][h][w] = a + b;  // now always ≤ 15.8
            }
        }
    }

    // 4) Call design under test (DUT)
    matrix_add(C, H, W, in1, in2, out_hw);

    // 5) Validate results
    int err = 0;
    for (int c = 0; c < C && !err; c++) {
        for (int h = 0; h < H && !err; h++) {
            for (int w = 0; w < W; w++) {
                if (hls::abs(out_hw[c][h][w] - gold[c][h][w]) > ap_fixed<16,5>(0.1)) {
                    std::printf("Mismatch at [%d][%d][%d]: HW=%f, SW=%f\n",
                                c, h, w,
                                (double)out_hw[c][h][w],
                                (double)gold[c][h][w]);
                    err = 1;
                    break;
                }
            }
        }
    }

    // 6) Report
    if (err) {
        std::puts("TEST FAILED");
        return 1;  // non-zero indicates failure :contentReference[oaicite:5]{index=5}
    } else {
        std::puts("TEST PASSED");
        return 0;  // zero indicates success :contentReference[oaicite:6]{index=6}
    }
}
