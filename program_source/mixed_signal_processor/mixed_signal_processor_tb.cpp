// contents of mixed_signal_processor_tb.cpp
// Standalone C++ testbench for mixed_signal_processor.cpp

#include <iostream>
#include <iomanip>
#include <cassert>
#include <random>

// Include the source to avoid duplicate symbol issues and to reuse types/functions
#include "mixed_signal_processor.cpp"

// Helper to compute expected output using the same fixed-point arithmetic sequence
static void compute_expected(const fixed_point_t in[ARRAY_SIZE], fixed_point_t exp_out[ARRAY_SIZE]) {
    fixed_point_t gain = fixed_point_t(1.5);
    fixed_point_t offset = fixed_point_t(0.25);
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        fixed_point_t amplified = in[i] * gain;
        fixed_point_t biased = amplified + offset;
        exp_out[i] = biased;
    }
}

// Helper to run a test: call DUT, compute expected, and compare element-wise
static void run_and_check(const char* test_name,
                          const fixed_point_t in[ARRAY_SIZE],
                          bool print_samples = false) {
    fixed_point_t out[ARRAY_SIZE];
    fixed_point_t exp_out[ARRAY_SIZE];

    // Call the device under test (DUT)
    mixed_signal_processor(const_cast<fixed_point_t*>(in), out);

    // Compute expected outputs
    compute_expected(in, exp_out);

    // Compare outputs
    int mismatches = 0;
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        if (!(out[i] == exp_out[i])) {
            mismatches++;
            if (mismatches <= 5) {
                std::cout << "Mismatch at idx " << i
                          << " input=" << in[i].to_double()
                          << " expected=" << exp_out[i].to_double()
                          << " got=" << out[i].to_double() << "\n";
            }
        }
    }

    std::cout << "[TEST] " << test_name << ": ";
    if (mismatches == 0) {
        std::cout << "PASS";
    } else {
        std::cout << "FAIL (" << mismatches << " mismatches)";
    }
    std::cout << "\n";

    // Optionally print sample values for inspection
    if (print_samples) {
        std::cout << "Sample outputs (first 10):\n";
        std::cout << std::fixed << std::setprecision(6);
        for (int i = 0; i < 10 && i < ARRAY_SIZE; ++i) {
            std::cout << "i=" << i
                      << " in=" << in[i].to_double()
                      << " out=" << out[i].to_double()
                      << " exp=" << exp_out[i].to_double() << "\n";
        }
    }

    // Assert no mismatches to enforce correctness
    assert(mismatches == 0 && "Output does not match expected values");
}

int main() {
    std::cout << std::fixed << std::setprecision(6);

    // Test Case 1: All zeros input
    // Expect every output to be offset (0 * 1.5 + 0.25) respecting fixed-point arithmetic.
    {
        fixed_point_t input[ARRAY_SIZE];
        for (int i = 0; i < ARRAY_SIZE; ++i) {
            input[i] = fixed_point_t(0.0);
        }
        run_and_check("All zeros input", input, true);
    }

    // Test Case 2: Small ramp pattern within safe range to avoid overflow
    // Use a repeating pattern of fractional values centered around zero.
    {
        fixed_point_t input[ARRAY_SIZE];
        for (int i = 0; i < ARRAY_SIZE; ++i) {
            // Pattern: values between -5.0 and +5.0 stepping by 0.25
            double val = ((i % 41) - 20) * 0.25; // -5.0 ... +5.0
            input[i] = fixed_point_t(val);
        }
        run_and_check("Small ramp pattern", input, true);
    }

    // Test Case 3: Extremes (near limits) to exercise overflow/wrap behavior
    // Use values near the representable limits of ap_fixed<16,8>.
    {
        fixed_point_t input[ARRAY_SIZE];
        // Fill with a set of extremes and edge values, then repeat to fill the array.
        double edge_vals[] = {
            -128.0,      // near minimum
            -127.75,
            -64.5,
            -1.0,
            -0.25,
            0.0,
            0.25,
            1.0,
            64.5,
            127.25,      // near maximum
            127.75       // may induce overflow when scaled
        };
        int edge_count = sizeof(edge_vals) / sizeof(edge_vals[0]);
        for (int i = 0; i < ARRAY_SIZE; ++i) {
            input[i] = fixed_point_t(edge_vals[i % edge_count]);
        }
        run_and_check("Extreme/edge values", input, true);
    }

    // Test Case 4: Pseudo-random values across the array
    // Deterministic randomness to provide broader coverage.
    {
        fixed_point_t input[ARRAY_SIZE];
        std::mt19937 rng(12345);
        std::uniform_real_distribution<double> dist(-50.0, 50.0);
        for (int i = 0; i < ARRAY_SIZE; ++i) {
            input[i] = fixed_point_t(dist(rng));
        }
        run_and_check("Random inputs", input, false);
    }

    std::cout << "All tests completed successfully.\n";
    return 0;
}