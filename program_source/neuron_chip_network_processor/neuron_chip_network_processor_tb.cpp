// contents of neuron_chip_network_processor_tb.cpp

#include <iostream>
#include <cassert>
#include <ap_fixed.h>

#define INPUT_SIZE 1024
#define OUTPUT_SIZE 1024
#define WEIGHT_SIZE 1024
// Include the source under test to avoid duplicate symbol issues and ensure the function is available.
typedef ap_fixed<16, 8> fixed_point_t;

void neuron_chip_network_processor(fixed_point_t input[INPUT_SIZE], 
                                   fixed_point_t weights[WEIGHT_SIZE], 
                                   fixed_point_t bias, 
                                   fixed_point_t output[OUTPUT_SIZE]) ;
// Helper to compare doubles within a small tolerance.
static bool nearly_equal(double a, double b, double eps = 1e-6) {
    return std::abs(a - b) <= eps;
}

int main() {
    // Allocate input, weights, and output arrays
    fixed_point_t input[INPUT_SIZE];
    fixed_point_t weights[WEIGHT_SIZE];
    fixed_point_t output[OUTPUT_SIZE];

    // -------------------------------
    // Test Case 1: Simple dot-product with sparse vectors and a fractional bias
    // - Set the first 16 elements of input and weights to 1.0; others to 0.0.
    // - Bias set to 0.5.
    // Expected behavior:
    //   sum = sum_{j=0..15}(1 * 1) = 16, output[i] = sum + bias = 16.5 for all i.
    // -------------------------------

    // Initialize arrays to zero
    for (int j = 0; j < INPUT_SIZE; ++j) {
        input[j] = fixed_point_t(0.0);
        weights[j] = fixed_point_t(0.0);
    }

    // Set first 16 entries to 1.0
    const int active_elems = 16;
    for (int j = 0; j < active_elems; ++j) {
        input[j] = fixed_point_t(1.0);
        weights[j] = fixed_point_t(1.0);
    }

    fixed_point_t bias = fixed_point_t(0.5);

    // Run the DUT (Device Under Test)
    neuron_chip_network_processor(input, weights, bias, output);

    // Compute expected result using double precision (values chosen are exactly representable)
    double expected_sum = 0.0;
    for (int j = 0; j < INPUT_SIZE; ++j) {
        expected_sum += (double)input[j] * (double)weights[j];
    }
    double expected_out = expected_sum + (double)bias; // 16 + 0.5 = 16.5

    // Validate several output indices
    assert(nearly_equal((double)output[0], expected_out) && "Output[0] mismatch for Test Case 1");
    assert(nearly_equal((double)output[1], expected_out) && "Output[1] mismatch for Test Case 1");
    assert(nearly_equal((double)output[OUTPUT_SIZE - 1], expected_out) && "Last output mismatch for Test Case 1");

    // Print a few outputs to visually confirm
    std::cout << "Test Case 1:\n";
    std::cout << "Expected output value: " << expected_out << "\n";
    std::cout << "Output[0]: " << (double)output[0] << "\n";
    std::cout << "Output[1]: " << (double)output[1] << "\n";
    std::cout << "Output[" << OUTPUT_SIZE - 1 << "]: " << (double)output[OUTPUT_SIZE - 1] << "\n";
    std::cout << "Test Case 1 PASSED\n";

    // -------------------------------
    // (Optional light check)
    // Verify all outputs are equal to the first one (since the function computes the same sum for every output index)
    // -------------------------------
    double ref = (double)output[0];
    for (int i = 1; i < OUTPUT_SIZE; ++i) {
        assert(nearly_equal((double)output[i], ref) && "All outputs should be identical");
    }
    std::cout << "Uniformity check PASSED (all outputs identical)\n";

    std::cout << "All tests PASSED.\n";
    return 0;
}