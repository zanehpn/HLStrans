// test_sigmoid.cpp
#include <iostream>
#include <cmath>
#include <cstdlib>
#include "sigmoid.h"


int main() {
    // Tolerance for fixed-point comparison
    const float eps = 2e-1;

    // Allocate and initialize input/output
    static data_t input [C][H][W];
    static data_t output[C][H][W];

    // 1) Fill input with a simple repeating pattern in [-4, +4)
    for (int c = 0; c < C; ++c) {
        for (int h = 0; h < H; ++h) {
            for (int w = 0; w < W; ++w) {
                float v = ((c*H + h)*W + w) % 9 - 4;  // values –4…+4
                input[c][h][w] = (data_t)v;
            }
        }
    }

    // 2) Invoke the DUT
    sigmoid(input, output);

    // 3) Verify each element against float reference
    for (int c = 0; c < C; ++c) {
        for (int h = 0; h < H; ++h) {
            for (int w = 0; w < W; ++w) {
                float in_val  = static_cast<float>(input[c][h][w]);
                float ref     = 1.0f / (1.0f + std::exp2(-in_val));  // reference sigmoid :contentReference[oaicite:0]{index=0}
                float got     = static_cast<float>(output[c][h][w]);
                if (std::fabs(ref - got) > eps) {
                    std::cout << "Test fail at ["<<c<<"]["<<h<<"]["<<w<<"]: "
                              << got << " vs ref " << ref << std::endl;
                    return 1;
                }
            }
        }
    }

    // 4) All checks passed
    std::cout << "Test pass" << std::endl;  // recommended practice: report pass/fail :contentReference[oaicite:1]{index=1}
    return 0;
}
