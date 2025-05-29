#include <cstdio>
#include <cstdlib>
#include <cmath>

// Bring in your DUT’s signature
void linear_fc(
    const float in[512],
    float out[1024],
    const float weights[1024][512],
    const float biases[1024]
);

int main() {
    // Dimensions
    const int IN_FM  = 512;
    const int OUT_FM = 1024;

    // Buffers
    static float in[IN_FM];
    static float out_hw[OUT_FM];
    static float out_ref[OUT_FM];
    static float weights[OUT_FM][IN_FM];
    static float biases[OUT_FM];

    // 1) Initialize inputs, weights, biases
    std::srand(123);
    for (int i = 0; i < IN_FM; i++) {
        in[i] = (std::rand() % 1000) / 1000.0f;  // [0.0,0.999]
    }
    for (int o = 0; o < OUT_FM; o++) {
        biases[o] = (std::rand() % 2000) / 1000.0f - 1.0f; // [-1.0,1.0)
        for (int i = 0; i < IN_FM; i++) {
            weights[o][i] = (std::rand() % 2000) / 1000.0f - 1.0f; // [-1.0,1.0)
        }
    }

    // 2) Compute golden reference
    for (int o = 0; o < OUT_FM; o++) {
        float acc = biases[o];
        for (int i = 0; i < IN_FM; i++) {
            acc += weights[o][i] * in[i];
        }
        out_ref[o] = acc;
    }

    // 3) Call design under test (DUT)
    linear_fc(in, out_hw, weights, biases);

    // 4) Validate results
    bool pass = true;
    const float eps = 1e-3f;
    for (int o = 0; o < OUT_FM; o++) {
        float diff = std::fabs(out_hw[o] - out_ref[o]);
        if (diff > eps) {
            std::printf("Mismatch at output %d: DUT=%.6f, REF=%.6f, DIFF=%.6f\n",
                        o, out_hw[o], out_ref[o], diff);
            pass = false;
            break;
        }
    }

    // 5) Report and exit code
    if (pass) {
        std::puts("TEST PASSED");
        return 0;   // success
    } else {
        std::puts("TEST FAILED");
        return 1;   // failure
    }
}
