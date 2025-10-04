// contents of vadd_tb.cpp
#include <iostream>
#include <vector>
#include <string>
#include <cassert>
#include <algorithm>

// Include the DUT (Device Under Test) implementation.
// vadd.cpp defines the vadd(int* a, int size, int inc_value) function.
#include "vadd.cpp"

// Helper to run a single test case: constructs input, calls vadd, and checks results.
void run_test(const std::string& name, int size, int inc_val, bool print_samples = false) {
    std::cout << "[TEST] " << name << " (size=" << size << ", inc=" << inc_val << ")" << std::endl;

    // Prepare input data: deterministic pattern so we can predict expected outputs.
    std::vector<int> input(size);
    for (int i = 0; i < size; ++i) {
        input[i] = (i * 3) - 7;  // Arbitrary pattern
    }
    std::vector<int> original = input;  // Save original for validation

    // Call the function under test
    // Note: For size=0, input.data() is valid to pass because vadd won't dereference it.
    vadd(input.data(), size, inc_val);

    // Validate results: each element should be original + inc_val
    for (int i = 0; i < size; ++i) {
        int expected = original[i] + inc_val;
        if (input[i] != expected) {
            std::cerr << "  FAIL at index " << i << ": got " << input[i]
                      << ", expected " << expected << std::endl;
            assert(false);
        }
    }

    // Optionally print a small sample of results
    if (print_samples && size > 0) {
        int print_count = std::min(size, 8);
        std::cout << "  Sample output: ";
        for (int i = 0; i < print_count; ++i) {
            std::cout << input[i] << (i + 1 < print_count ? ", " : "");
        }
        std::cout << std::endl;
    }

    std::cout << "  PASSED\n" << std::endl;
}

int main() {
    std::cout << "Running vadd function tests..." << std::endl;

    // Test 1: Small size below burst buffer, using default INCR_VALUE
    // Ensures basic increment behavior for small arrays.
    run_test("Small size, default INC", 5, INCR_VALUE, true);

    // Test 2: Exact burst boundary size (BURSTBUFFERSIZE)
    // Verifies correct burst read/write behavior at chunk boundary.
    run_test("Exact burst size", BURSTBUFFERSIZE, 3, true);

    // Test 3: Size just over burst (BURSTBUFFERSIZE + 1)
    // Ensures boundary logic handles leftover chunk correctly.
    run_test("Just over burst size", BURSTBUFFERSIZE + 1, 2, true);

    // Test 4: Non-multiple larger than burst (two bursts + remainder)
    // Validates multiple burst iterations and final partial chunk.
    run_test("Two bursts + remainder", BURSTBUFFERSIZE * 2 + 13, 5, true);

    // Test 5: Maximum data size (DATA_SIZE) as per defined depth
    // Stresses the full range expected by the HLS kernel.
    run_test("Max DATA_SIZE", DATA_SIZE, 1, false);

    // Test 6: Zero size (no operation expected)
    // Confirms function handles empty input safely without touching memory.
    run_test("Zero size", 0, INCR_VALUE, false);

    // Test 7: Negative increment value
    // Ensures decrement behavior works as expected.
    run_test("Negative increment", 10, -7, true);

    std::cout << "All tests completed successfully." << std::endl;
    return 0;
}