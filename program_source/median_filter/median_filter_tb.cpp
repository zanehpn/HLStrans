// contents of median_filter_tb.cpp
#include <iostream>
#include <algorithm>
#include <cstdlib>
#include <cassert>

// Include the source to make this testbench standalone
#include "median_filter.cpp"

// Reference implementation to compute expected median filter output
static void compute_median_filter_reference(const int in[SIZE], int out[SIZE]) {
    // Handle interior elements by sorting 3-element windows
    for (int i = 1; i < SIZE - 1; ++i) {
        int window[3] = { in[i - 1], in[i], in[i + 1] };
        std::sort(window, window + 3);
        out[i] = window[1]; // median
    }
    // Boundary conditions match the DUT
    out[0] = in[0];
    out[SIZE - 1] = in[SIZE - 1];
}

// Helper to compare arrays
static bool arrays_equal(const int* a, const int* b, int n) {
    for (int i = 0; i < n; ++i) {
        if (a[i] != b[i]) {
            return false;
        }
    }
    return true;
}

// Helper to print a slice of the array
static void print_slice(const int* arr, int start, int count) {
    for (int i = start; i < start + count && i < SIZE; ++i) {
        std::cout << arr[i] << (i < start + count - 1 ? ", " : "");
    }
    std::cout << std::endl;
}

int main() {
    int input[SIZE];
    int output[SIZE];
    int golden[SIZE];

    // Test 1: Monotonic increasing sequence should remain unchanged
    // The median of [i-1, i, i+1] is i, so output == input for all positions.
    for (int i = 0; i < SIZE; ++i) {
        input[i] = i;
    }
    median_filter(input, output);
    compute_median_filter_reference(input, golden);
    assert(arrays_equal(output, golden, SIZE));
    std::cout << "Test 1 (Monotonic increasing) passed. Sample output: ";
    print_slice(output, 0, 10);

    // Test 2: Constant sequence -> output should be the same constant everywhere
    for (int i = 0; i < SIZE; ++i) {
        input[i] = 42;
    }
    median_filter(input, output);
    compute_median_filter_reference(input, golden);
    assert(arrays_equal(output, golden, SIZE));
    std::cout << "Test 2 (Constant sequence) passed. Sample output: ";
    print_slice(output, 0, 10);

    // Test 3: Single impulse in the middle -> median filter suppresses the spike
    // With neighbors being zero, median([0, spike, 0]) = 0; output should be all zeros.
    for (int i = 0; i < SIZE; ++i) {
        input[i] = 0;
    }
    int spike_idx = SIZE / 2;
    input[spike_idx] = 1000;
    median_filter(input, output);
    compute_median_filter_reference(input, golden);
    assert(arrays_equal(output, golden, SIZE));
    // Check boundaries explicitly
    assert(output[0] == input[0]);
    assert(output[SIZE - 1] == input[SIZE - 1]);
    std::cout << "Test 3 (Single impulse) passed. Center region output: ";
    print_slice(output, spike_idx - 3, 7);

    // Test 4: Alternating pattern -> median selects the local majority
    // Pattern 0,1,0,1,... median will tend to reduce high-frequency toggling.
    for (int i = 0; i < SIZE; ++i) {
        input[i] = (i % 2 == 0) ? 0 : 1;
    }
    median_filter(input, output);
    compute_median_filter_reference(input, golden);
    assert(arrays_equal(output, golden, SIZE));
    std::cout << "Test 4 (Alternating 0/1) passed. Sample output: ";
    print_slice(output, 0, 16);

    // Test 5: Deterministic pseudo-random values including negatives
    // Use a simple LCG to create a repeatable sequence and validate against reference.
    unsigned int seed = 12345u;
    for (int i = 0; i < SIZE; ++i) {
        // LCG: seed = (a*seed + c) % 2^31; then map to signed int range
        seed = 1103515245u * seed + 12345u;
        int val = static_cast<int>(seed >> 16);
        // Center around zero to include negatives
        input[i] = (val % 2000) - 1000;
    }
    median_filter(input, output);
    compute_median_filter_reference(input, golden);
    assert(arrays_equal(output, golden, SIZE));
    std::cout << "Test 5 (Pseudo-random with negatives) passed. Sample input/output: " << std::endl;
    std::cout << "Input slice:  ";
    print_slice(input, 100, 10);
    std::cout << "Output slice: ";
    print_slice(output, 100, 10);

    std::cout << "All tests passed successfully." << std::endl;
    return 0;
}