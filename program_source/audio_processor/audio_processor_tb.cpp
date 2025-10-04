// contents of audio_processor_tb.cpp
#include <iostream>
#include <vector>
#include <cmath>
#include <cassert>
#include <iomanip>

// Forward declaration of the function under test.
// The actual implementation is in audio_processor.cpp and should be linked during build.
void audio_processor(float input[], float output[], float gain, float threshold);

static const size_t SIZE = 1024;
static const float EPS = 1e-6f;

// Compute expected outputs based on the specification of audio_processor
void compute_expected(const std::vector<float>& input, std::vector<float>& expected, float gain, float threshold) {
    expected.resize(SIZE);
    for (size_t i = 0; i < SIZE; ++i) {
        float amplified = input[i] * gain;
        if (amplified > threshold) {
            expected[i] = threshold;
        } else if (amplified < -threshold) {
            expected[i] = -threshold;
        } else {
            expected[i] = amplified;
        }
    }
}

// Compare two arrays with tolerance and print first few mismatches
bool compare_arrays(const std::vector<float>& out, const std::vector<float>& exp, float eps, size_t& mismatches, size_t max_print = 5) {
    mismatches = 0;
    for (size_t i = 0; i < SIZE; ++i) {
        float diff = std::fabs(out[i] - exp[i]);
        if (diff > eps || std::isnan(out[i]) != std::isnan(exp[i])) {
            if (mismatches < max_print) {
                std::cout << "  Mismatch at index " << i
                          << " expected=" << std::setprecision(8) << exp[i]
                          << " got=" << out[i]
                          << " diff=" << diff << "\n";
            }
            ++mismatches;
        }
    }
    return mismatches == 0;
}

void run_test(const std::string& name,
              const std::vector<float>& input,
              float gain,
              float threshold,
              const std::vector<float>& expected_reference) {
    std::vector<float> output(SIZE, 0.0f);

    // Run DUT
    audio_processor(const_cast<float*>(input.data()), output.data(), gain, threshold);

    // Compare
    size_t mismatches = 0;
    bool ok = compare_arrays(output, expected_reference, EPS, mismatches);
    std::cout << "[TEST] " << name << ": " << (ok ? "PASSED" : "FAILED") << " (mismatches=" << mismatches << ")\n";
    assert(ok && "Test failed");
}

int main() {
    std::cout << "Starting audio_processor testbench with SIZE=" << SIZE << "\n";

    // Test 1: Zero input should produce zero output irrespective of gain/threshold
    {
        std::vector<float> in(SIZE, 0.0f);
        float gain = 5.0f;
        float threshold = 0.8f;
        std::vector<float> exp(SIZE, 0.0f); // Expected zeros
        run_test("Zero Input -> Zero Output", in, gain, threshold, exp);
    }

    // Test 2: Constant input within threshold after gain; expect scaled value without clipping
    {
        std::vector<float> in(SIZE, 0.4f);   // Input constant
        float gain = 2.0f;                   // Amplified to 0.8
        float threshold = 1.0f;              // No clipping expected
        std::vector<float> exp(SIZE, 0.8f);  // Expected 0.8 at all indices
        run_test("Within Threshold (No Clip)", in, gain, threshold, exp);
    }

    // Test 3: Positive clipping; amplified values exceed threshold
    {
        std::vector<float> in(SIZE, 1.0f);  // Amplified to 3.0
        float gain = 3.0f;
        float threshold = 2.0f;             // Should clip to +2.0
        std::vector<float> exp(SIZE, 2.0f);
        run_test("Positive Clipping", in, gain, threshold, exp);
    }

    // Test 4: Negative clipping; amplified values below -threshold
    {
        std::vector<float> in(SIZE, -1.0f); // Amplified to -3.0
        float gain = 3.0f;
        float threshold = 2.0f;             // Should clip to -2.0
        std::vector<float> exp(SIZE, -2.0f);
        run_test("Negative Clipping", in, gain, threshold, exp);
    }

    // Test 5: Sine wave; some samples clip, some don't
    {
        std::vector<float> in(SIZE, 0.0f);
        const float pi = 3.14159265358979323846f;
        for (size_t i = 0; i < SIZE; ++i) {
            in[i] = std::sin(2.0f * pi * static_cast<float>(i) / static_cast<float>(SIZE));
        }
        float gain = 1.5f;
        float threshold = 1.0f;

        std::vector<float> exp;
        compute_expected(in, exp, gain, threshold);
        run_test("Sine Wave Mixed (Clip and No Clip)", in, gain, threshold, exp);
    }

    // Test 6: Boundary equality; amplified equals exactly +/- threshold
    // Expect output equals the amplified value (exactly +/-threshold), not further clamped beyond threshold
    {
        std::vector<float> in(SIZE, 0.0f);
        float gain = 4.0f;
        float threshold = 1.0f;
        for (size_t i = 0; i < SIZE; ++i) {
            in[i] = (i % 2 == 0) ? (threshold / gain) : -(threshold / gain); // 0.25 or -0.25
        }
        std::vector<float> exp(SIZE, 0.0f);
        for (size_t i = 0; i < SIZE; ++i) {
            // amplified equals exactly +/-threshold
            exp[i] = (i % 2 == 0) ? threshold : -threshold;
        }
        run_test("Boundary Equality (Exactly +/-threshold)", in, gain, threshold, exp);
    }

    // Test 7: Zero threshold forces all outputs to zero
    {
        std::vector<float> in(SIZE, 0.0f);
        for (size_t i = 0; i < SIZE; ++i) {
            // Mix of positive and negative inputs
            in[i] = (i % 3 == 0) ? 0.5f : ((i % 3 == 1) ? -1.5f : 0.0f);
        }
        float gain = 2.0f;
        float threshold = 0.0f; // Any amplified value should be clamped to 0
        std::vector<float> exp(SIZE, 0.0f);
        run_test("Zero Threshold (All Outputs Zero)", in, gain, threshold, exp);
    }

    std::cout << "All tests PASSED.\n";
    return 0;
}