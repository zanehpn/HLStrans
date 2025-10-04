// contents of audio_mixing_tb.cpp
#include <iostream>
#include <cmath>
#include <cassert>
#include <vector>
#include <string>

// The DUT is defined in audio_mixing.cpp as:
// #define SIZE 1024
// void audio_mixing(float input1[SIZE], float input2[SIZE], float output[SIZE], float volume1, float volume2);

// Since audio_mixing.cpp does not define a main(), we forward-declare the function and SIZE here
// to avoid duplicate symbol errors during linking when both files are compiled together.
#define SIZE 1024
void audio_mixing(float input1[SIZE], float input2[SIZE], float output[SIZE], float volume1, float volume2);

// Simple floating point comparison helper
static inline bool approx_equal(float a, float b, float eps = 1e-6f) {
    return std::fabs(a - b) <= eps * std::max(1.0f, std::max(std::fabs(a), std::fabs(b)));
}

// Utility to print first N elements of an array for quick inspection
void print_first_samples(const float* arr, int n, const std::string& label) {
    std::cout << label << " [first " << n << "]: ";
    for (int i = 0; i < n; ++i) {
        std::cout << arr[i];
        if (i != n - 1) std::cout << ", ";
    }
    std::cout << std::endl;
}

// Test 1: Constant inputs with simple volumes (checks basic mixing arithmetic)
bool test_basic_constant() {
    float in1[SIZE], in2[SIZE], out[SIZE];
    const float v1 = 0.5f, v2 = 0.25f;

    for (int i = 0; i < SIZE; ++i) {
        in1[i] = 1.0f;
        in2[i] = 2.0f;
        out[i] = 0.0f;
    }

    audio_mixing(in1, in2, out, v1, v2);

    bool ok = true;
    for (int i = 0; i < SIZE; ++i) {
        float expected = 1.0f * v1 + 2.0f * v2; // expected = 1.0
        if (!approx_equal(out[i], expected)) {
            std::cerr << "Test 1 fail at index " << i << ": got " << out[i] << ", expected " << expected << std::endl;
            ok = false;
            break;
        }
    }

    print_first_samples(out, 8, "Test 1 output");
    return ok;
}

// Test 2: Ramp inputs and negative volume to ensure subtraction works as expected
bool test_ramp_and_negative_volume() {
    float in1[SIZE], in2[SIZE], out[SIZE];
    const float v1 = 1.0f, v2 = -1.0f;

    for (int i = 0; i < SIZE; ++i) {
        in1[i] = static_cast<float>(i);
        in2[i] = static_cast<float>(SIZE - i);
        out[i] = 0.0f;
    }

    audio_mixing(in1, in2, out, v1, v2);

    bool ok = true;
    for (int i = 0; i < SIZE; ++i) {
        float expected = in1[i] * v1 + in2[i] * v2; // expected = i - (SIZE - i) = 2i - SIZE
        if (!approx_equal(out[i], expected)) {
            std::cerr << "Test 2 fail at index " << i << ": got " << out[i] << ", expected " << expected << std::endl;
            ok = false;
            break;
        }
    }

    print_first_samples(out, 8, "Test 2 output");
    return ok;
}

// Test 3: Zero volumes should produce zeros regardless of input values
bool test_zero_volumes() {
    float in1[SIZE], in2[SIZE], out[SIZE];
    const float v1 = 0.0f, v2 = 0.0f;

    for (int i = 0; i < SIZE; ++i) {
        in1[i] = static_cast<float>((i % 11) - 5);
        in2[i] = static_cast<float>((i % 7) - 3);
        out[i] = 1.0f; // initialize to non-zero to ensure it gets overwritten
    }

    audio_mixing(in1, in2, out, v1, v2);

    bool ok = true;
    for (int i = 0; i < SIZE; ++i) {
        if (!approx_equal(out[i], 0.0f)) {
            std::cerr << "Test 3 fail at index " << i << ": got " << out[i] << ", expected 0.0" << std::endl;
            ok = false;
            break;
        }
    }

    print_first_samples(out, 8, "Test 3 output");
    return ok;
}

// Test 4: Mixed patterns with non-trivial volumes to stress arithmetic across varied data
bool test_mixed_patterns() {
    float in1[SIZE], in2[SIZE], out[SIZE];
    const float v1 = 2.0f, v2 = -3.0f;

    for (int i = 0; i < SIZE; ++i) {
        // Semi-randomized but deterministic patterns
        in1[i] = static_cast<float>((i % 10) - 5);           // range [-5, 4]
        in2[i] = static_cast<float>(((i * 3) % 7) - 3);      // range [-3, 3]
        out[i] = 0.0f;
    }

    audio_mixing(in1, in2, out, v1, v2);

    bool ok = true;
    for (int i = 0; i < SIZE; ++i) {
        float expected = in1[i] * v1 + in2[i] * v2;
        if (!approx_equal(out[i], expected)) {
            std::cerr << "Test 4 fail at index " << i << ": got " << out[i] << ", expected " << expected << std::endl;
            ok = false;
            break;
        }
    }

    print_first_samples(out, 8, "Test 4 output");
    return ok;
}

// Test 5: Idempotence check with same inputs/volumes across multiple calls (ensures no hidden state)
bool test_repeatability() {
    float in1[SIZE], in2[SIZE], out1[SIZE], out2[SIZE];
    const float v1 = 0.75f, v2 = 0.25f;

    for (int i = 0; i < SIZE; ++i) {
        in1[i] = std::sin(0.01f * static_cast<float>(i));
        in2[i] = std::cos(0.02f * static_cast<float>(i));
        out1[i] = out2[i] = 0.0f;
    }

    audio_mixing(in1, in2, out1, v1, v2);
    audio_mixing(in1, in2, out2, v1, v2);

    bool ok = true;
    for (int i = 0; i < SIZE; ++i) {
        if (!approx_equal(out1[i], out2[i])) {
            std::cerr << "Test 5 fail at index " << i << ": run-to-run mismatch (" << out1[i] << " vs " << out2[i] << ")" << std::endl;
            ok = false;
            break;
        }
    }

    print_first_samples(out1, 8, "Test 5 output (run 1)");
    print_first_samples(out2, 8, "Test 5 output (run 2)");
    return ok;
}

int main() {
    std::cout << "Running audio_mixing tests with SIZE=" << SIZE << std::endl;

    bool ok1 = test_basic_constant();
    std::cout << "Test 1 (basic constant) " << (ok1 ? "PASSED" : "FAILED") << std::endl;

    bool ok2 = test_ramp_and_negative_volume();
    std::cout << "Test 2 (ramp + negative volume) " << (ok2 ? "PASSED" : "FAILED") << std::endl;

    bool ok3 = test_zero_volumes();
    std::cout << "Test 3 (zero volumes) " << (ok3 ? "PASSED" : "FAILED") << std::endl;

    bool ok4 = test_mixed_patterns();
    std::cout << "Test 4 (mixed patterns) " << (ok4 ? "PASSED" : "FAILED") << std::endl;

    bool ok5 = test_repeatability();
    std::cout << "Test 5 (repeatability) " << (ok5 ? "PASSED" : "FAILED") << std::endl;

    bool all_ok = ok1 && ok2 && ok3 && ok4 && ok5;
    std::cout << "Overall: " << (all_ok ? "ALL TESTS PASSED" : "SOME TESTS FAILED") << std::endl;

    // Use assert to signal failure status in automated environments
    assert(all_ok && "One or more tests failed");
    return all_ok ? 0 : 1;
}