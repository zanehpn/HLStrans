// contents of dynamic_range_compression_tb.cpp
#include <iostream>
#include <cmath>
#include <cassert>

// Include the DUT to avoid duplicate symbol issues and reuse ARRAY_SIZE/definitions
#include "dynamic_range_compression.cpp"

static bool nearly_equal(float a, float b, float tol = 1e-6f) {
    return std::fabs(a - b) <= tol * std::max(1.0f, std::max(std::fabs(a), std::fabs(b)));
}

static void clear_array(float* arr) {
    for (int i = 0; i < ARRAY_SIZE; ++i) arr[i] = 0.0f;
}

int main() {
    float in[ARRAY_SIZE];
    float out[ARRAY_SIZE];

    // Test 1: Pass-through behavior for values within the threshold
    // Inputs within [-threshold, threshold] should be unchanged.
    {
        clear_array(in);
        clear_array(out);
        float threshold = 1.0f;
        float ratio = 2.0f;

        in[0] = 0.0f;
        in[1] = 0.5f;
        in[2] = -0.5f;
        in[3] = 0.9999f;
        in[4] = -0.9999f;

        dynamic_range_compression(in, out, threshold, ratio);

        assert(nearly_equal(out[0], in[0]));
        assert(nearly_equal(out[1], in[1]));
        assert(nearly_equal(out[2], in[2]));
        assert(nearly_equal(out[3], in[3]));
        assert(nearly_equal(out[4], in[4]));

        std::cout << "Test 1 passed: pass-through within threshold.\n";
    }

    // Test 2: Compression for values above positive threshold
    // Values greater than threshold should be compressed toward the threshold by the ratio.
    {
        clear_array(in);
        clear_array(out);
        float threshold = 1.0f;
        float ratio = 2.0f;

        in[10] = 2.0f;  // expected: 1 + (2 - 1)/2 = 1.5
        in[11] = 5.0f;  // expected: 1 + (5 - 1)/2 = 3.0

        dynamic_range_compression(in, out, threshold, ratio);

        float exp10 = threshold + (in[10] - threshold) / ratio;
        float exp11 = threshold + (in[11] - threshold) / ratio;
        assert(nearly_equal(out[10], exp10));
        assert(nearly_equal(out[11], exp11));

        std::cout << "Test 2 passed: compression above positive threshold (2.0->" << out[10]
                  << ", 5.0->" << out[11] << ").\n";
    }

    // Test 3: Compression for values below negative threshold
    // Values less than -threshold should be compressed toward -threshold by the ratio.
    {
        clear_array(in);
        clear_array(out);
        float threshold = 1.0f;
        float ratio = 2.0f;

        in[12] = -2.0f; // expected: -1 + (-2 + 1)/2 = -1.5
        in[13] = -5.0f; // expected: -1 + (-5 + 1)/2 = -3.0

        dynamic_range_compression(in, out, threshold, ratio);

        float exp12 = -threshold + (in[12] + threshold) / ratio;
        float exp13 = -threshold + (in[13] + threshold) / ratio;
        assert(nearly_equal(out[12], exp12));
        assert(nearly_equal(out[13], exp13));

        std::cout << "Test 3 passed: compression below negative threshold (-2.0->" << out[12]
                  << ", -5.0->" << out[13] << ").\n";
    }

    // Test 4: Edge cases at exactly the thresholds
    // Exactly at threshold or -threshold should pass through unchanged.
    {
        clear_array(in);
        clear_array(out);
        float threshold = 1.0f;
        float ratio = 3.0f;

        in[20] = 1.0f;   // expected: 1.0 (no compression since not > threshold)
        in[21] = -1.0f;  // expected: -1.0 (no compression since not < -threshold)

        dynamic_range_compression(in, out, threshold, ratio);

        assert(nearly_equal(out[20], 1.0f));
        assert(nearly_equal(out[21], -1.0f));

        std::cout << "Test 4 passed: exact threshold pass-through (1.0->" << out[20]
                  << ", -1.0->" << out[21] << ").\n";
    }

    // Test 5: Compression ratio of 1.0 should effectively produce identity mapping beyond threshold
    // With ratio=1.0, output becomes threshold + (input - threshold)/1 = input.
    {
        clear_array(in);
        clear_array(out);
        float threshold = 1.0f;
        float ratio = 1.0f;

        in[30] = 3.0f;    // expected: 3.0
        in[31] = -3.0f;   // expected: -3.0
        in[32] = 0.5f;    // within threshold: expected: 0.5

        dynamic_range_compression(in, out, threshold, ratio);

        assert(nearly_equal(out[30], in[30]));
        assert(nearly_equal(out[31], in[31]));
        assert(nearly_equal(out[32], in[32]));

        std::cout << "Test 5 passed: ratio=1.0 identity behavior (3.0->" << out[30]
                  << ", -3.0->" << out[31] << ", 0.5->" << out[32] << ").\n";
    }

    // Test 6: Zero threshold means all non-zero values are compressed by the ratio
    // For threshold=0, output = input/ratio for any input != 0, else 0.
    {
        clear_array(in);
        clear_array(out);
        float threshold = 0.0f;
        float ratio = 4.0f;

        in[40] = 0.8f;    // expected: 0.2
        in[41] = -0.8f;   // expected: -0.2
        in[42] = 0.0f;    // expected: 0.0

        dynamic_range_compression(in, out, threshold, ratio);

        assert(nearly_equal(out[40], in[40] / ratio));
        assert(nearly_equal(out[41], in[41] / ratio));
        assert(nearly_equal(out[42], 0.0f));

        std::cout << "Test 6 passed: zero-threshold compression (0.8->" << out[40]
                  << ", -0.8->" << out[41] << ", 0.0->" << out[42] << ").\n";
    }

    // Test 7: All zeros remain zeros for any threshold/ratio
    // Ensures no spurious changes on zero input across the buffer.
    {
        clear_array(in);
        clear_array(out);
        float threshold = 0.5f;
        float ratio = 10.0f;

        dynamic_range_compression(in, out, threshold, ratio);

        // Spot check some indices and also compute total absolute sum for additional confidence
        float sum_abs = 0.0f;
        for (int i = 0; i < ARRAY_SIZE; ++i) {
            assert(nearly_equal(out[i], 0.0f));
            sum_abs += std::fabs(out[i]);
        }
        assert(nearly_equal(sum_abs, 0.0f));

        std::cout << "Test 7 passed: all zeros remain zeros, sum_abs=" << sum_abs << ".\n";
    }

    std::cout << "All tests passed.\n";
    return 0;
}