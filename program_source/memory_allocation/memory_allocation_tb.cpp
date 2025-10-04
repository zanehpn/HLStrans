// contents of memory_allocation_tb.cpp
#include <iostream>
#include <iomanip>
#include <random>
#include <limits>
#include <vector>
#include <string>

// Include the source under test (no main() defined there)
#include "memory_allocation.cpp"

// Helper to compute golden reference: output[i] = input[i] * 2 + 1
static void compute_golden(const int input[SIZE], int golden[SIZE]) {
    for (int i = 0; i < SIZE; ++i) {
        golden[i] = input[i] * 2 + 1;
    }
}

// Helper to check equality and print mismatches (up to a limit)
static bool check_equal(const int out[SIZE], const int golden[SIZE], const std::string& test_name, int print_limit = 10) {
    int mismatch_count = 0;
    for (int i = 0; i < SIZE; ++i) {
        if (out[i] != golden[i]) {
            if (mismatch_count < print_limit) {
                std::cerr << "[FAIL] " << test_name << ": Mismatch at index " << i
                          << " -> got " << out[i] << ", expected " << golden[i] << std::endl;
            }
            ++mismatch_count;
        }
    }
    if (mismatch_count == 0) {
        std::cout << "[PASS] " << test_name << " (all " << SIZE << " elements match)" << std::endl;
        return true;
    } else {
        std::cerr << "[FAIL] " << test_name << " (" << mismatch_count << " mismatches)" << std::endl;
        return false;
    }
}

// Helper to print a few sample outputs
static void print_samples(const int input[SIZE], const int output[SIZE], const std::string& test_name, int samples = 5) {
    std::cout << "Samples for " << test_name << ":" << std::endl;
    for (int i = 0; i < samples && i < SIZE; ++i) {
        std::cout << "  i=" << i << "  input=" << input[i] << "  output=" << output[i] << " (expected " << input[i] * 2 + 1 << ")" << std::endl;
    }
}

int main() {
    int failures = 0;

    // Test 1: Sequential increasing input (0..SIZE-1)
    // Expectation: output[i] = 2*i + 1
    {
        int input[SIZE];
        int output[SIZE];
        int golden[SIZE];
        for (int i = 0; i < SIZE; ++i) {
            input[i] = i;
        }
        compute_golden(input, golden);
        memory_allocation(input, output);
        print_samples(input, output, "Sequential increasing");
        if (!check_equal(output, golden, "Sequential increasing")) {
            ++failures;
        }
    }

    // Test 2: Sequential decreasing negative input (0, -1, -2, ...)
    // Expectation: output[i] = 2*(-i) + 1 = -2*i + 1
    {
        int input[SIZE];
        int output[SIZE];
        int golden[SIZE];
        for (int i = 0; i < SIZE; ++i) {
            input[i] = -i;
        }
        compute_golden(input, golden);
        memory_allocation(input, output);
        print_samples(input, output, "Sequential negative");
        if (!check_equal(output, golden, "Sequential negative")) {
            ++failures;
        }
    }

    // Test 3: Constant pattern (all elements equal to 42)
    // Expectation: output[i] = 85 for all i
    {
        int input[SIZE];
        int output[SIZE];
        int golden[SIZE];
        for (int i = 0; i < SIZE; ++i) {
            input[i] = 42;
        }
        compute_golden(input, golden);
        memory_allocation(input, output);
        print_samples(input, output, "Constant pattern (42)");
        if (!check_equal(output, golden, "Constant pattern (42)")) {
            ++failures;
        }
    }

    // Test 4: Random inputs within a safe range to avoid overflow
    // Range chosen so that 2*input + 1 stays within int: [-1e6, 1e6]
    {
        std::mt19937 rng(12345); // fixed seed for reproducibility
        std::uniform_int_distribution<int> dist(-1000000, 1000000);
        int input[SIZE];
        int output[SIZE];
        int golden[SIZE];
        for (int i = 0; i < SIZE; ++i) {
            input[i] = dist(rng);
        }
        compute_golden(input, golden);
        memory_allocation(input, output);
        print_samples(input, output, "Random inputs (safe range)");
        if (!check_equal(output, golden, "Random inputs (safe range)")) {
            ++failures;
        }
    }

    // Test 5: Boundary extremes that still avoid overflow
    // Maximum safe input: (INT_MAX - 1)/2
    // Minimum safe input: ceil((INT_MIN - 1)/2)
    {
        const int max_safe = (std::numeric_limits<int>::max() - 1) / 2;
        const int min_safe = static_cast<int>(std::ceil((static_cast<long long>(std::numeric_limits<int>::min()) - 1) / 2.0));
        int input[SIZE];
        int output[SIZE];
        int golden[SIZE];
        // Alternate between min_safe and max_safe across the array
        for (int i = 0; i < SIZE; ++i) {
            input[i] = (i % 2 == 0) ? min_safe : max_safe;
        }
        compute_golden(input, golden);
        memory_allocation(input, output);
        print_samples(input, output, "Boundary extremes (min/max safe)");
        if (!check_equal(output, golden, "Boundary extremes (min/max safe)")) {
            ++failures;
        }
    }

    if (failures == 0) {
        std::cout << "All tests passed." << std::endl;
        return 0;
    } else {
        std::cerr << failures << " test(s) failed." << std::endl;
        return 1;
    }
}