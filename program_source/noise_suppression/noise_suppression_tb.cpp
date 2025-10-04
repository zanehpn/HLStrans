// contents of noise_suppression_tb.cpp
#include <iostream>
#include <iomanip>
#include <cstdint>
#include <cassert>
#include <random>
#include <string>
#include <vector>

// Include the DUT source (no main() inside), so we can call the function directly.
#include "noise_suppression.cpp"

// Helper to compute expected output based on the DUT rule:
// If abs(input[i]) < threshold, output[i] = 0; else output[i] = input[i].
static inline int16_t expected_val(int16_t in, int16_t threshold) {
    int ai = std::abs(static_cast<int>(in));
    int th = static_cast<int>(threshold);
    return (ai < th) ? static_cast<int16_t>(0) : in;
}

// Generic runner that fills input, invokes DUT, and checks expected outputs.
template <typename FillFunc>
void run_case(const std::string& name, int16_t threshold, FillFunc fill_func) {
    int16_t input[SIZE];
    int16_t output[SIZE];
    int16_t expected[SIZE];

    // Fill input array using provided function
    fill_func(input);

    // Compute expected results
    int suppressed_count_expected = 0;
    for (int i = 0; i < SIZE; ++i) {
        expected[i] = expected_val(input[i], threshold);
        if (expected[i] == 0) suppressed_count_expected++;
    }

    // Call the DUT
    noise_suppression(input, output, threshold);

    // Compare results
    int mismatches = 0;
    int suppressed_count_actual = 0;
    for (int i = 0; i < SIZE; ++i) {
        if (output[i] == 0) suppressed_count_actual++;
        if (output[i] != expected[i]) {
            mismatches++;
            if (mismatches <= 10) {
                std::cout << "[Mismatch] " << name << " idx=" << i
                          << " in=" << input[i]
                          << " thr=" << threshold
                          << " expected=" << expected[i]
                          << " got=" << output[i] << "\n";
            }
        }
    }

    std::cout << "[Case: " << name << "] threshold=" << threshold
              << " suppressed_expected=" << suppressed_count_expected
              << " suppressed_actual=" << suppressed_count_actual
              << " mismatches=" << mismatches << "\n";

    // Assert that results match
    assert(mismatches == 0);
}

int main() {
    // Test Case 1: Mixed small and large values around threshold = 10
    // Verifies that values with |x| < 10 are suppressed, equals 10 are kept.
    run_case("MixedAroundThreshold_10", 10, [](int16_t input[SIZE]) {
        // Place representative values at start; remaining entries zero.
        std::vector<int16_t> v = { -15, -10, -9, -1, 0, 1, 9, 10, 11, 32767 };
        for (size_t i = 0; i < v.size(); ++i) input[i] = v[i];
        for (size_t i = v.size(); i < SIZE; ++i) input[i] = 0;
    });

    // Test Case 2: Threshold = 0
    // Since |x| < 0 is always false, no suppression should occur.
    run_case("ThresholdZero_NoSuppression", 0, [](int16_t input[SIZE]) {
        for (int i = 0; i < SIZE; ++i) {
            input[i] = static_cast<int16_t>((i % 200) - 100); // range [-100, 99]
        }
    });

    // Test Case 3: Edge equality case with threshold = 100
    // Values with |x| == 100 should be kept; |x| < 100 suppressed.
    run_case("EqualityEdge_100", 100, [](int16_t input[SIZE]) {
        std::vector<int16_t> v = { 100, -100, 99, -99, 101, -101, 0 };
        for (size_t i = 0; i < v.size(); ++i) input[i] = v[i];
        for (size_t i = v.size(); i < SIZE; ++i) input[i] = 0;
    });

    // Test Case 4: Extremes with large threshold = 30000
    // Check int16 min/max behavior and equality at threshold.
    run_case("Extremes_30000", 30000, [](int16_t input[SIZE]) {
        std::vector<int16_t> v = { -32768, -30000, -29999, 29999, 30000, 32767 };
        for (size_t i = 0; i < v.size(); ++i) input[i] = v[i];
        for (size_t i = v.size(); i < SIZE; ++i) input[i] = 0;
    });

    // Test Case 5: Negative threshold (e.g., -5)
    // Since |x| >= 0 and threshold < 0, |x| < threshold is always false,
    // therefore no suppression should occur.
    run_case("NegativeThreshold_NoSuppression", -5, [](int16_t input[SIZE]) {
        std::mt19937 rng(42);
        std::uniform_int_distribution<int> dist(-32768, 32767);
        for (int i = 0; i < SIZE; ++i) {
            input[i] = static_cast<int16_t>(dist(rng));
        }
    });

    // Test Case 6: Random stress test with threshold = 12345 across entire array
    // Verifies correctness over a wide range of random inputs and counts suppressed entries.
    run_case("RandomStress_12345", 12345, [](int16_t input[SIZE]) {
        std::mt19937 rng(123456);
        std::uniform_int_distribution<int> dist(-32768, 32767);
        for (int i = 0; i < SIZE; ++i) {
            input[i] = static_cast<int16_t>(dist(rng));
        }
    });

    std::cout << "All tests passed.\n";
    return 0;
}