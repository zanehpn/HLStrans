#include <iostream>
#include <cmath>
#include <cstdlib>
#include "elu.h"    // declares: void elu(data_t input[C][H][W], data_t output[C][H][W], data_t alpha);

int main() {
    constexpr float eps    = 2e-1;
    data_t alpha = (data_t)1.0;  // your chosen alpha

    data_t input [C][H][W];
    data_t output[C][H][W];

    // 1) Initialize input with a simple pattern: values in [-1.0, 1.0)
    for (int c = 0; c < C; ++c)
        for (int h = 0; h < H; ++h)
            for (int w = 0; w < W; ++w) {
                float v = ((c*H + h)*W + w) % 20 / 10.0f - 1.0f;
                input[c][h][w] = (data_t)v;
            }

    // 2) Call the DUT
    elu(input, output, alpha);

    // 3) Verify
    for (int c = 0; c < C; ++c) {
        for (int h = 0; h < H; ++h) {
            for (int w = 0; w < W; ++w) {
                float in_val  = (float)input[c][h][w];
                float ref = (in_val >= 0.0f)
                    ? in_val
                    : (float)alpha * (std::exp2(in_val) - 1.0f);
                float out_val = (float)output[c][h][w];
                if (std::fabs(ref - out_val) > eps) {
                    std::cout << "Test fail at ["<<c<<"]["<<h<<"]["<<w<<"]: "
                              << out_val << " vs ref " << ref << "\n";
                    return 1;
                }
            }
        }
    }

    std::cout << "Test pass\n";
    return 0;
}
