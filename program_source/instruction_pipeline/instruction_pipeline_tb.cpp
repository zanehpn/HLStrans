// contents of instruction_pipeline_tb.cpp
// Standalone testbench for instruction_pipeline.cpp

#include <iostream>
#include <functional>
#include <string>
#include <limits>
#include <cstdlib>

// Include the DUT so this testbench can be compiled standalone
#define ARRAY_SIZE 1024

void instruction_pipeline(int input[ARRAY_SIZE], int output[ARRAY_SIZE]) ;

static bool run_test(const std::string& name, const std::function<void(int[])>& fill, bool print_samples = true) {
    int input[ARRAY_SIZE];
    int output[ARRAY_SIZE];

    // Fill input using the provided function
    fill(input);

    // Initialize output with a sentinel to detect proper overwrite
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        output[i] = 0xDEADBEEF;
    }

    // Call the DUT
    instruction_pipeline(input, output);

    // Verify: expected transformation is output[i] = 2*input[i] - 1
    int mismatches = 0;
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        long long expected64 = 2LL * input[i] - 1LL;
        if (expected64 < std::numeric_limits<int>::min() || expected64 > std::numeric_limits<int>::max()) {
            // Out-of-range result indicates overflow if input not constrained
            ++mismatches;
            if (mismatches <= 10) {
                std::cout << "[Mismatch] Index " << i << ": input=" << input[i]
                          << " expected(out-of-range)=" << expected64
                          << " got=" << output[i] << "\n";
            }
        } else {
            int expected = static_cast<int>(expected64);
            if (output[i] != expected) {
                ++mismatches;
                if (mismatches <= 10) {
                    std::cout << "[Mismatch] Index " << i << ": input=" << input[i]
                              << " expected=" << expected
                              << " got=" << output[i] << "\n";
                }
            }
        }
    }

    // Print sample outputs for quick sanity check
    if (print_samples) {
        std::cout << "Sample (first 10) for " << name << ":\n";
        for (int i = 0; i < 10 && i < ARRAY_SIZE; ++i) {
            long long expected = 2LL * input[i] - 1LL;
            std::cout << "  i=" << i
                      << " in=" << input[i]
                      << " out=" << output[i]
                      << " exp=" << expected << "\n";
        }
    }

    if (mismatches == 0) {
        std::cout << "[PASS] " << name << "\n";
        return true;
    } else {
        std::cout << "[FAIL] " << name << " with " << mismatches << " mismatches\n";
        return false;
    }
}

int main() {
    std::cout << "Running instruction_pipeline testbench with ARRAY_SIZE=" << ARRAY_SIZE << "\n";

    int total = 0;
    int passed = 0;

    // Test 1: Pattern fill within safe range, plus a couple of large safe values
    // - Validates general correctness on mixed small and larger values
    total++;
    passed += run_test("Pattern + Large Safe Values", [](int in[]) {
        for (int i = 0; i < ARRAY_SIZE; ++i) {
            in[i] = (i % 100) - 50; // Range: [-50, 49]
        }
        // Override a few entries with larger values still within safe range
        if (ARRAY_SIZE > 10) in[10] = 1000000000;   // 2*1e9 - 1 = 1999999999 (safe)
        if (ARRAY_SIZE > 11) in[11] = -1000000000;  // 2*(-1e9) - 1 = -2000000001 (safe)
    }) ? 1 : 0;

    // Test 2: All zeros
    // - Expected output: all -1
    total++;
    passed += run_test("All Zeros", [](int in[]) {
        for (int i = 0; i < ARRAY_SIZE; ++i) {
            in[i] = 0;
        }
    }) ? 1 : 0;

    // Test 3: Ascending sequence 0..ARRAY_SIZE-1
    // - Checks arithmetic on simple increasing sequence
    total++;
    passed += run_test("Ascending Sequence", [](int in[]) {
        for (int i = 0; i < ARRAY_SIZE; ++i) {
            in[i] = i;
        }
    }) ? 1 : 0;

    // Test 4: Alternating positive/negative magnitudes
    // - Validates handling of negative values and sign
    total++;
    passed += run_test("Alternating Sign", [](int in[]) {
        for (int i = 0; i < ARRAY_SIZE; ++i) {
            int mag = i % 1000; // keep magnitude modest
            in[i] = (i % 2 == 0) ? mag : -mag;
        }
    }) ? 1 : 0;

    // Test 5: Pseudo-random values in a safe range to avoid overflow
    // - Ensures robustness over varied inputs
    total++;
    passed += run_test("Random Safe Range", [](int in[]) {
        std::srand(0xC0FFEE); // fixed seed for determinism
        for (int i = 0; i < ARRAY_SIZE; ++i) {
            // Range [-1,000,000, 1,000,000]
            int r = std::rand();
            int val = (r % 2000001) - 1000000;
            in[i] = val;
        }
    }) ? 1 : 0;

    std::cout << "Summary: " << passed << " / " << total << " tests passed\n";
    return (passed == total) ? 0 : 1;
}