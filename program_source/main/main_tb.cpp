// contents of main_tb.cpp
#include <iostream>
#include <cstddef>

// Rename original main() to avoid duplicate symbol and include the source under test
#define main adpcm_original_main
#include "main.cpp"
#undef main

// Helper to compare arrays and count mismatches
static size_t count_mismatches(const int* a, const int* b, size_t n) {
    size_t mism = 0;
    for (size_t i = 0; i < n; ++i) {
        if (a[i] != b[i]) {
            ++mism;
        }
    }
    return mism;
}

int main() {
    int failures = 0;

    // Test 1: Run the provided reference flow (adpcm_main) and verify against known vectors.
    // This exercises the full encode/decode pipeline over the test_data set.
    adpcm_main();
    {
        size_t mism_enc = count_mismatches(compressed, test_compressed, IN_END / 2);
        size_t mism_dec = count_mismatches(result, test_result, IN_END);
        std::cout << "Test 1 - Vector check: encode mismatches=" << mism_enc
                  << ", decode mismatches=" << mism_dec << std::endl;
        if (mism_enc != 0 || mism_dec != 0) {
            ++failures;
        } else {
            std::cout << "Test 1 PASS" << std::endl;
        }
    }

    // Test 2: Single-step check of the first encode/decode result.
    // After reset(), encoding the first pair from test_data should match
    // test_compressed[0], and a subsequent decode should produce xout1/xout2
    // matching test_result[0] and test_result[1].
    {
        reset();
        int code = encode(test_data[0], test_data[1]);
        int exp_code = test_compressed[0];
        decode(code);
        int exp_out1 = test_result[0];
        int exp_out2 = test_result[1];

        bool ok = true;
        if (code != exp_code) {
            std::cout << "Test 2 FAIL: encoded code mismatch, got=" << code
                      << ", exp=" << exp_code << std::endl;
            ok = false;
        }
        if (xout1 != exp_out1 || xout2 != exp_out2) {
            std::cout << "Test 2 FAIL: decoded outputs mismatch, got=(" << xout1 << ", " << xout2
                      << "), exp=(" << exp_out1 << ", " << exp_out2 << ")" << std::endl;
            ok = false;
        }
        if (!ok) {
            ++failures;
        } else {
            std::cout << "Test 2 PASS" << std::endl;
        }
    }

    // Test 3: Zero-input stability test.
    // After reset(), repeatedly encode/decode zero pairs and expect zero outputs.
    {
        reset();
        int zero_mismatches = 0;
        const int N = 10;
        for (int i = 0; i < N; ++i) {
            int code = encode(0, 0);
            decode(code);
            if (xout1 != 0 || xout2 != 0) {
                ++zero_mismatches;
                std::cout << "Test 3: mismatch at iter " << i
                          << ", got=(" << xout1 << ", " << xout2 << "), exp=(0, 0)" << std::endl;
            }
        }
        std::cout << "Test 3 - Zero input mismatches: " << zero_mismatches << std::endl;
        if (zero_mismatches != 0) {
            ++failures;
            std::cout << "Test 3 FAIL" << std::endl;
        } else {
            std::cout << "Test 3 PASS" << std::endl;
        }
    }

    // Summary
    if (failures == 0) {
        std::cout << "All tests PASSED" << std::endl;
        return 0;
    } else {
        std::cout << "Some tests FAILED, failures=" << failures << std::endl;
        return 1;
    }
}