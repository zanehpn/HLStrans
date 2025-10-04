// contents of sample_rate_conversion_tb.cpp
#include <iostream>
#include <cmath>
#include <cassert>

// Include the DUT implementation to make this testbench standalone.
#include "sample_rate_conversion.cpp"

static bool nearly_equal(float a, float b, float eps = 1e-5f) {
    float diff = std::fabs(a - b);
    float scale = 1.0f + std::max(std::fabs(a), std::fabs(b));
    return diff <= eps * scale;
}

// Helper to run DUT and validate against a provided oracle function.
template <typename OracleFunc>
bool run_and_check(const char* name, OracleFunc oracle, bool verbose_preview = false) {
    float input[INPUT_SIZE];
    float output[OUTPUT_SIZE];

    // Fill input via oracle initializer
    oracle(input, nullptr, true);

    // Run DUT
    sample_rate_conversion(input, output);

    // Validate outputs via oracle checker
    bool pass = oracle(nullptr, output, false);

    // Optional preview of first few outputs for visual verification
    if (verbose_preview) {
        std::cout << name << " preview outputs: ";
        for (int i = 0; i < std::min(10, OUTPUT_SIZE); ++i) {
            std::cout << output[i] << (i + 1 < std::min(10, OUTPUT_SIZE) ? ", " : "");
        }
        std::cout << std::endl;
    }

    std::cout << (pass ? "[PASS] " : "[FAIL] ") << name << std::endl;
    assert(pass && "Test failed");
    return pass;
}

int main() {
    int failures = 0;

    // Test 1: All zeros input -> all zeros output
    // Each output is the average of two consecutive zeros.
    failures += !run_and_check("All zeros", [](float* in, const float* out, bool init) -> bool {
        if (init) {
            for (int i = 0; i < INPUT_SIZE; ++i) in[i] = 0.0f;
            return true;
        } else {
            bool ok = true;
            for (int i = 0; i < OUTPUT_SIZE; ++i) {
                ok &= nearly_equal(out[i], 0.0f);
            }
            return ok;
        }
    });

    // Test 2: All ones input -> all ones output
    // Each output is average(1, 1) = 1.
    failures += !run_and_check("All ones", [](float* in, const float* out, bool init) -> bool {
        if (init) {
            for (int i = 0; i < INPUT_SIZE; ++i) in[i] = 1.0f;
            return true;
        } else {
            bool ok = true;
            for (int i = 0; i < OUTPUT_SIZE; ++i) {
                ok &= nearly_equal(out[i], 1.0f);
            }
            return ok;
        }
    });

    // Test 3: Linearly increasing input: in[n] = n
    // Output[i] = average(2i, 2i+1) = 2i + 0.5
    failures += !run_and_check("Linearly increasing (n)", [](float* in, const float* out, bool init) -> bool {
        if (init) {
            for (int i = 0; i < INPUT_SIZE; ++i) in[i] = static_cast<float>(i);
            return true;
        } else {
            bool ok = true;
            for (int i = 0; i < OUTPUT_SIZE; ++i) {
                float expected = 2.0f * i + 0.5f;
                ok &= nearly_equal(out[i], expected);
            }
            // Explicitly check the last element to ensure boundary coverage
            ok &= nearly_equal(out[OUTPUT_SIZE - 1], 2.0f * (OUTPUT_SIZE - 1) + 0.5f);
            return ok;
        }
    }, true);

    // Test 4: Alternating pattern: a, b, a, b, ...
    // Output should be constant average: (a + b) / 2 for all i.
    failures += !run_and_check("Alternating pattern (1,3)", [](float* in, const float* out, bool init) -> bool {
        const float a = 1.0f, b = 3.0f;
        const float expected = (a + b) * 0.5f;
        if (init) {
            for (int i = 0; i < INPUT_SIZE; ++i) in[i] = (i % 2 == 0) ? a : b;
            return true;
        } else {
            bool ok = true;
            for (int i = 0; i < OUTPUT_SIZE; ++i) {
                ok &= nearly_equal(out[i], expected);
            }
            return ok;
        }
    });

    // Test 5: Deterministic pseudo-random input
    // Expected output is the average of each consecutive pair.
    failures += !run_and_check("Deterministic pseudo-random", [](float* in, const float* out, bool init) -> bool {
        // Simple LCG for repeatable pseudo-random values mapped to [-1, 1]
        static const uint32_t seed = 123456789u;
        uint32_t state = seed;
        auto lcg = [&state]() {
            state = 1664525u * state + 1013904223u;
            return state;
        };
        if (init) {
            for (int i = 0; i < INPUT_SIZE; ++i) {
                float v = static_cast<float>(lcg() & 0xFFFFu) / 32768.0f - 1.0f;
                in[i] = v;
            }
            return true;
        } else {
            // Re-generate the same input sequence to compute expected outputs on the fly
            state = seed;
            float prev = 0.0f;
            bool have_prev = false;
            int out_idx = 0;
            bool ok = true;
            for (int i = 0; i < INPUT_SIZE; ++i) {
                float v = static_cast<float>(lcg() & 0xFFFFu) / 32768.0f - 1.0f;
                if (!have_prev) {
                    prev = v;
                    have_prev = true;
                } else {
                    float expected = 0.5f * (prev + v);
                    ok &= nearly_equal(out[out_idx++], expected, 1e-4f);
                    have_prev = false;
                }
            }
            ok &= (out_idx == OUTPUT_SIZE);
            return ok;
        }
    });

    if (failures == 0) {
        std::cout << "All tests passed!" << std::endl;
        return 0;
    } else {
        std::cerr << failures << " test(s) failed." << std::endl;
        return 1;
    }
}