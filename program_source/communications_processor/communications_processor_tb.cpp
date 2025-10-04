// contents of communications_processor_tb.cpp
#include <iostream>
#include <cstdlib>

// Include the DUT source directly to make this testbench standalone.
// This brings in the definition of communications_processor, ap_int, and ARRAY_SIZE.
#include "communications_processor.cpp"

// Reference model that mirrors the DUT behavior for verification.
static void reference_communications_processor(ap_int<32> input_data[ARRAY_SIZE],
                                               ap_int<32> golden_output[ARRAY_SIZE]) {
    ap_int<32> temp_buffer[ARRAY_SIZE];

    // Step 1: Data Transformation
    for (int i = 0; i < ARRAY_SIZE; i++) {
        temp_buffer[i] = input_data[i] * 2 + 1;
    }

    // Step 2: Data Filtering
    for (int i = 0; i < ARRAY_SIZE; i++) {
        if (temp_buffer[i] % 3 == 0) {
            golden_output[i] = temp_buffer[i];
        } else {
            golden_output[i] = 0;
        }
    }

    // Step 3: Data Aggregation
    ap_int<32> sum = 0;
    for (int i = 0; i < ARRAY_SIZE; i++) {
        sum += golden_output[i];
    }

    // Step 4: Normalize Output
    for (int i = 0; i < ARRAY_SIZE; i++) {
        golden_output[i] = golden_output[i] / (sum + 1);
    }
}

// Utility to run a single test: fills input, runs DUT and reference, compares results.
template <typename FillFunc>
static int run_test(const char* test_name, FillFunc fill) {
    ap_int<32> input[ARRAY_SIZE];
    ap_int<32> golden[ARRAY_SIZE];
    ap_int<32> output[ARRAY_SIZE];

    // Fill input with the provided pattern
    fill(input);

    // Run reference model and DUT
    reference_communications_processor(input, golden);
    communications_processor(input, output);

    // Compare outputs
    int mismatches = 0;
    for (int i = 0; i < ARRAY_SIZE; i++) {
        if (output[i] != golden[i]) {
            if (mismatches < 10) {
                std::cout << "[Mismatch " << (mismatches + 1) << "] idx=" << i
                          << " got=" << (long long)output[i]
                          << " exp=" << (long long)golden[i] << std::endl;
            }
            mismatches++;
        }
    }

    if (mismatches == 0) {
        std::cout << "[PASS] " << test_name << " with no mismatches" << std::endl;
    } else {
        std::cout << "[FAIL] " << test_name << " with " << mismatches << " mismatches" << std::endl;
    }

    // Show a small sample of the DUT outputs for quick inspection
    std::cout << "Sample outputs (" << test_name << "): ";
    for (int i = 0; i < 8 && i < ARRAY_SIZE; i++) {
        std::cout << (long long)output[i] << (i < 7 ? " " : "");
    }
    std::cout << std::endl;

    return mismatches;
}

int main() {
    int total_mismatches = 0;

    // Test 1: All zeros
    // - After transform: all elements become 1
    // - Filter: none pass (1 % 3 != 0)
    // - Sum = 0; Normalize by (0+1) => outputs remain 0
    total_mismatches += run_test("All zeros", [](ap_int<32> in[ARRAY_SIZE]) {
        for (int i = 0; i < ARRAY_SIZE; i++) in[i] = 0;
    });

    // Test 2: Sequential values (i)
    // - Transform: 2*i + 1; divisible by 3 when i % 3 == 1
    // - Validates regular passing pattern and normalization
    total_mismatches += run_test("Sequential indices", [](ap_int<32> in[ARRAY_SIZE]) {
        for (int i = 0; i < ARRAY_SIZE; i++) in[i] = i;
    });

    // Test 3: Alternating extremes to exercise overflow/wrap-around behavior
    // - Even indices: INT_MAX (2147483647)
    // - Odd indices: INT_MIN (-2147483648)
    // - Checks two's complement wrap in ap_int during transform and modulo
    total_mismatches += run_test("Alternating extremes", [](ap_int<32> in[ARRAY_SIZE]) {
        for (int i = 0; i < ARRAY_SIZE; i++) {
            if ((i & 1) == 0) {
                in[i] = (ap_int<32>)2147483647LL;   // INT_MAX
            } else {
                in[i] = (ap_int<32>)(-2147483648LL); // INT_MIN
            }
        }
    });

    // Test 4: Random small values (deterministic seed)
    // - Mix of positives and negatives; ensures general robustness
    std::srand(0);
    total_mismatches += run_test("Random small values", [](ap_int<32> in[ARRAY_SIZE]) {
        for (int i = 0; i < ARRAY_SIZE; i++) {
            int val = (std::rand() % 201) - 100; // [-100, 100]
            in[i] = (ap_int<32>)val;
        }
    });

    // Test 5: All ones
    // - Transform: 3 for all; pass filter; sum = 3 * ARRAY_SIZE
    // - Normalize: each becomes 3 / (3*ARRAY_SIZE + 1) which truncates to 0 for ARRAY_SIZE >= 1
    total_mismatches += run_test("All ones", [](ap_int<32> in[ARRAY_SIZE]) {
        for (int i = 0; i < ARRAY_SIZE; i++) in[i] = 1;
    });

    std::cout << "Total mismatches across all tests: " << total_mismatches << std::endl;
    return (total_mismatches == 0) ? 0 : 1;
}