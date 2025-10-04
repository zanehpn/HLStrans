// contents of data_forwarding_tb.cpp
#include <iostream>
#include <cassert>
#include <cstdint>
#include <limits>
#include <random>

// Include the source under test to access data_forwarding() and SIZE
#include "data_forwarding.cpp"

// Helper to run a single verification pass
static void verify_copy(const char* test_name, ap_int<32> input[SIZE]) {
    ap_int<32> output[SIZE];

    // Pre-fill output with a known non-zero pattern to ensure it gets overwritten
    for (int i = 0; i < SIZE; ++i) {
        output[i] = ap_int<32>(0x5A5A5A5A);
    }

    // Call the DUT
    data_forwarding(input, output);

    // Check results
    int mismatches = 0;
    int first_mismatch_index = -1;
    for (int i = 0; i < SIZE; ++i) {
        if (output[i] != input[i]) {
            if (mismatches == 0) {
                first_mismatch_index = i;
            }
            ++mismatches;
        }
    }

    // Report
    if (mismatches == 0) {
        std::cout << "[PASS] " << test_name << ": All " << SIZE << " elements match." << std::endl;
    } else {
        std::cout << "[FAIL] " << test_name << ": " << mismatches << " mismatches. "
                  << "First at index " << first_mismatch_index
                  << " (got=" << (int)output[first_mismatch_index].to_int()
                  << ", exp=" << (int)input[first_mismatch_index].to_int() << ")." << std::endl;
    }

    assert(mismatches == 0 && "Data forwarding did not copy correctly.");
}

int main() {
    // Test 1: Sequential range covering negative and positive values
    // This checks basic value preservation and sign handling
    {
        ap_int<32> input[SIZE];
        for (int i = 0; i < SIZE; ++i) {
            input[i] = ap_int<32>(i - (SIZE / 2)); // range includes negatives and positives
        }
        verify_copy("Sequential signed range", input);
    }

    // Test 2: Extreme values pattern
    // This checks handling of edge values like INT32_MIN and INT32_MAX, zero and -1
    {
        ap_int<32> input[SIZE];
        for (int i = 0; i < SIZE; ++i) {
            switch (i & 3) {
                case 0: input[i] = ap_int<32>(std::numeric_limits<int32_t>::max()); break;
                case 1: input[i] = ap_int<32>(std::numeric_limits<int32_t>::min()); break;
                case 2: input[i] = ap_int<32>(-1); break;
                case 3: input[i] = ap_int<32>(0); break;
            }
        }
        verify_copy("Extreme values pattern", input);
    }

    // Test 3: Pseudo-random data with fixed seed
    // This checks general robustness across a wide range of values
    {
        ap_int<32> input[SIZE];
        std::mt19937 rng(12345u);
        std::uniform_int_distribution<int32_t> dist(std::numeric_limits<int32_t>::min(),
                                                    std::numeric_limits<int32_t>::max());
        for (int i = 0; i < SIZE; ++i) {
            input[i] = ap_int<32>(dist(rng));
        }
        verify_copy("Random data (seed=12345)", input);
    }

    // Test 4: All zeros
    // This ensures that zero data is forwarded as-is and previous output pattern is cleared
    {
        ap_int<32> input[SIZE];
        for (int i = 0; i < SIZE; ++i) {
            input[i] = ap_int<32>(0);
        }
        verify_copy("All zeros", input);
    }

    // Test 5: Alternating bit patterns
    // This checks that different bit patterns are copied exactly
    {
        ap_int<32> input[SIZE];
        for (int i = 0; i < SIZE; ++i) {
            input[i] = (i & 1) ? ap_int<32>(0xAAAAAAAA) : ap_int<32>(0x55555555);
        }
        verify_copy("Alternating bit patterns 0x55/0xAA", input);
    }

    std::cout << "All tests completed successfully." << std::endl;
    return 0;
}