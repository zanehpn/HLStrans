// contents of pulse_generator_tb.cpp
// Standalone testbench for pulse_generator.cpp
// Exercises various threshold and pulse_width combinations and validates output.

#include <iostream>
#include <cassert>
#include <cstring>

// Include the source under test (no main() defined there)
#include "pulse_generator.cpp"

// Helper to print a slice of the output for visual inspection
void print_samples(const int output[], int start, int count) {
    std::cout << "Samples [" << start << ":" << (start + count - 1) << "]: ";
    for (int i = start; i < start + count && i < SIZE; ++i) {
        std::cout << output[i] << (i < start + count - 1 ? " " : "");
    }
    std::cout << std::endl;
}

// Generic test runner that checks expected output across all indices
bool run_and_check(int threshold, int pulse_width, const char* test_name, bool verbose_samples = false) {
    int output[SIZE];
    std::memset(output, 0, sizeof(output));

    // Call the function under test
    pulse_generator(threshold, pulse_width, output);

    // Validate output against expected behavior: output[i] = 1 if (i % pulse_width) < threshold else 0
    int mismatches = 0;
    int first_mismatch = -1;
    for (int i = 0; i < SIZE; ++i) {
        int expected = ((pulse_width > 0) ? ((i % pulse_width) < threshold) : 0); // safeguard for pulse_width == 0
        if (output[i] != expected) {
            mismatches++;
            if (first_mismatch < 0) first_mismatch = i;
        }
    }

    std::cout << "[TEST] " << test_name << " | threshold=" << threshold
              << " pulse_width=" << pulse_width << " -> ";
    if (mismatches == 0) {
        std::cout << "PASS";
    } else {
        std::cout << "FAIL (mismatches=" << mismatches << ", first at i=" << first_mismatch << ")";
    }
    std::cout << std::endl;

    if (verbose_samples) {
        print_samples(output, 0, 16);
    }

    return mismatches == 0;
}

int main() {
    int passed = 0;
    int total = 0;

    // Test 1: Basic periodic pattern
    // Expect: 3 ones followed by 5 zeros, repeating with period 8
    total++;
    if (run_and_check(3, 8, "Basic periodic pattern (threshold=3, pulse_width=8)", true)) passed++;

    // Test 2: Zero threshold
    // Expect: All zeros because (i % pulse_width) < 0 is always false
    total++;
    if (run_and_check(0, 10, "Zero threshold (threshold=0, pulse_width=10)", true)) passed++;

    // Test 3: Threshold == pulse_width
    // Expect: All ones because modulo is always < pulse_width
    total++;
    if (run_and_check(10, 10, "Threshold equals pulse_width (threshold=10, pulse_width=10)", true)) passed++;

    // Test 4: Threshold > pulse_width
    // Expect: All ones because any modulo result [0..pulse_width-1] is less than threshold
    total++;
    if (run_and_check(5, 3, "Threshold greater than pulse_width (threshold=5, pulse_width=3)", true)) passed++;

    // Test 5: pulse_width larger than SIZE
    // Expect: For i in [0, SIZE-1], i % 2048 == i, so output[i] == 1 for i < threshold, else 0
    total++;
    if (run_and_check(100, 2048, "pulse_width larger than SIZE (threshold=100, pulse_width=2048)", true)) passed++;

    // Test 6a: pulse_width = 1, threshold = 1
    // Expect: All ones because i % 1 == 0 < 1
    total++;
    if (run_and_check(1, 1, "pulse_width=1, threshold=1 (always ON)", true)) passed++;

    // Test 6b: pulse_width = 1, threshold = 0
    // Expect: All zeros because 0 < 0 is false
    total++;
    if (run_and_check(0, 1, "pulse_width=1, threshold=0 (always OFF)", true)) passed++;

    std::cout << "\nSummary: " << passed << " / " << total << " tests passed." << std::endl;

    // Use assert to ensure all tests pass in automated contexts
    assert(passed == total && "Some tests failed");

    return 0;
}