// contents of audio_compression_tb.cpp
#include <iostream>
#include <cmath>
#include <cassert>
#include <string>
#include <vector>

// Include the DUT implementation to avoid duplicate symbol/link issues
#define ARRAY_SIZE 1024

void audio_compression(float input[ARRAY_SIZE], float output[ARRAY_SIZE]); 

static bool nearly_equal(float a, float b, float tol = 1e-6f) {
    return std::fabs(a - b) <= tol;
}

static float expected_value(float x) {
    // Mirrors the DUT logic:
    // - Threshold at 0.5 (strictly greater)
    // - Quantization: round(x / 0.1) * 0.1
    // - Dequantization: * 0.1
    if (std::fabs(x) > 0.5f) {
        return 0.01f * std::round(x * 10.0f);
    } else {
        return 0.0f;
    }
}

static void print_mismatch(int idx, float in, float got, float exp) {
    std::cout << "Mismatch at index " << idx
              << " input=" << in
              << " expected=" << exp
              << " got=" << got << std::endl;
}

// Test 1: All zeros input should produce all zeros output
static void test_all_zeros() {
    float in[ARRAY_SIZE] = {0};
    float out[ARRAY_SIZE] = {0};

    audio_compression(in, out);

    for (int i = 0; i < ARRAY_SIZE; ++i) {
        if (!nearly_equal(out[i], 0.0f)) {
            print_mismatch(i, in[i], out[i], 0.0f);
            assert(false && "All-zeros test failed");
        }
    }
    std::cout << "[PASS] Test 1: All zeros input" << std::endl;
}

// Test 2: Specific edge and representative values around the threshold and rounding boundaries
static void test_edge_and_quantization_cases() {
    float in[ARRAY_SIZE] = {0};
    float out[ARRAY_SIZE] = {0};

    // Populate first few entries with diverse cases; rest remain zero
    // Comments show expected outputs:
    // - 0.49 (abs <= 0.5) => 0.0
    // - 0.50 (== threshold) => 0.0
    // - 0.51 => round(5.1)=5 => 0.01*5=0.05
    // - 0.56 => round(5.6)=6 => 0.01*6=0.06
    // - -0.51 => round(-5.1)=-5 => -0.05
    // - -0.55 => round(-5.5)=-6 => -0.06
    // - -0.74 => round(-7.4)=-7 => -0.07
    // - 0.54 => round(5.4)=5 => 0.05
    // - 0.55 => round(5.5)=6 => 0.06
    // - 0.999 => round(9.99)=10 => 0.10
    // - 1000.0 => round(10000)=10000 => 100.0
    std::vector<float> samples = {
        0.49f, 0.50f, 0.51f, 0.56f, -0.51f, -0.55f, -0.74f, 0.54f, 0.55f, 0.999f, 1000.0f
    };

    for (size_t i = 0; i < samples.size(); ++i) {
        in[i] = samples[i];
    }

    audio_compression(in, out);

    for (size_t i = 0; i < samples.size(); ++i) {
        float exp = expected_value(in[i]);
        if (!nearly_equal(out[i], exp)) {
            print_mismatch(static_cast<int>(i), in[i], out[i], exp);
            assert(false && "Edge/quantization cases test failed");
        }
    }

    // Ensure untouched indices remain zero
    for (size_t i = samples.size(); i < ARRAY_SIZE; ++i) {
        if (!nearly_equal(out[i], 0.0f)) {
            print_mismatch(static_cast<int>(i), in[i], out[i], 0.0f);
            assert(false && "Unexpected non-zero beyond populated indices");
        }
    }

    std::cout << "[PASS] Test 2: Edge and quantization boundary cases" << std::endl;
}

// Test 3: Full array with a deterministic waveform pattern; verify all outputs
static void test_full_array_waveform() {
    float in[ARRAY_SIZE] = {0};
    float out[ARRAY_SIZE] = {0};

    // Fill with a sinusoidal pattern to cover values across [-1, 1]
    // This ensures we test both thresholding and quantization across the array
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        // Deterministic pattern with varying amplitude
        float x = std::sin(0.037f * static_cast<float>(i));
        // Slight bias on every 7th sample to exercise rounding boundaries
        if ((i % 7) == 0) {
            x += 0.005f;
        }
        in[i] = x;
    }

    audio_compression(in, out);

    int mismatches = 0;
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        float exp = expected_value(in[i]);
        if (!nearly_equal(out[i], exp)) {
            if (mismatches < 10) { // Limit printed mismatches
                print_mismatch(i, in[i], out[i], exp);
            }
            mismatches++;
        }
    }

    if (mismatches != 0) {
        std::cout << "[FAIL] Test 3: Waveform pattern mismatches=" << mismatches << std::endl;
        assert(false && "Waveform pattern test failed");
    }

    std::cout << "[PASS] Test 3: Full-array waveform pattern" << std::endl;
}

int main() {
    std::cout << "Running audio_compression tests..." << std::endl;

    test_all_zeros();
    test_edge_and_quantization_cases();
    test_full_array_waveform();

    std::cout << "All tests passed." << std::endl;
    return 0;
}