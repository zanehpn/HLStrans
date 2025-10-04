// contents of product_of_array_except_self_tb.cpp
#include <iostream>
#include <cassert>

// Include the source to access the function and ARRAY_SIZE definition
#include "product_of_array_except_self.cpp"

// Utility to compute expected outputs using prefix/suffix products
static void compute_expected(const int input[ARRAY_SIZE], int expected[ARRAY_SIZE]) {
    long long left_products[ARRAY_SIZE];
    long long right_products[ARRAY_SIZE];

    long long acc = 1;
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        left_products[i] = acc;
        acc *= input[i];
    }

    acc = 1;
    for (int i = ARRAY_SIZE - 1; i >= 0; --i) {
        right_products[i] = acc;
        acc *= input[i];
    }

    for (int i = 0; i < ARRAY_SIZE; ++i) {
        long long prod = left_products[i] * right_products[i];
        expected[i] = static_cast<int>(prod);
    }
}

// Helper to run a single test case
static bool run_test(const char* name, const int input[ARRAY_SIZE]) {
    int output[ARRAY_SIZE];
    int expected[ARRAY_SIZE];

    // Compute expected using reference model
    compute_expected(input, expected);

    // Run DUT
    product_of_array_except_self(const_cast<int*>(input), output);

    // Compare outputs
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        if (output[i] != expected[i]) {
            std::cout << "Test '" << name << "' FAILED at index " << i
                      << " expected=" << expected[i] << " got=" << output[i] << "\n";
            return false;
        }
    }

    std::cout << "Test '" << name << "' PASSED.\n";
    return true;
}

int main() {
    int failures = 0;

    // Test 1: Basic small values in first few positions, rest are 1
    // Expected:
    //  - output[0..3] are product of others among {1,2,3,4}
    //  - output[i>=4] equals 1*2*3*4 = 24
    {
        int input[ARRAY_SIZE];
        for (int i = 0; i < ARRAY_SIZE; ++i) input[i] = 1;
        input[0] = 1;
        input[1] = 2;
        input[2] = 3;
        input[3] = 4;
        if (!run_test("Basic small values [1,2,3,4,1,...,1]", input)) failures++;
    }

    // Test 2: Single zero in the array
    // Expected:
    //  - output[zero_index] = product of all non-zero elements (here 5*6=30)
    //  - all other outputs are 0
    {
        int input[ARRAY_SIZE];
        for (int i = 0; i < ARRAY_SIZE; ++i) input[i] = 1;
        input[0] = 0;
        input[1] = 5;
        input[2] = 6;
        if (!run_test("Single zero at index 0 with [0,5,6,1,...,1]", input)) failures++;
    }

    // Test 3: Two zeros in the array
    // Expected:
    //  - all outputs are 0 due to at least two zeros in the input
    {
        int input[ARRAY_SIZE];
        for (int i = 0; i < ARRAY_SIZE; ++i) input[i] = 1;
        input[0] = 0;
        input[2] = 0;
        input[1] = 5;
        if (!run_test("Two zeros at indices 0 and 2 with [0,5,0,1,...,1]", input)) failures++;
    }

    // Test 4: Negative numbers in first few positions, rest are 1
    // Expected:
    //  - correct sign handling: product excluding each index should reflect sign from negatives
    //    e.g., [-2, 3, 4] -> outputs: [12, -8, -6], others: -24
    {
        int input[ARRAY_SIZE];
        for (int i = 0; i < ARRAY_SIZE; ++i) input[i] = 1;
        input[0] = -2;
        input[1] = 3;
        input[2] = 4;
        if (!run_test("Negative numbers [-2,3,4,1,...,1]", input)) failures++;
    }

    // Test 5: All ones
    // Expected:
    //  - all outputs are 1 since product of all others is 1
    {
        int input[ARRAY_SIZE];
        for (int i = 0; i < ARRAY_SIZE; ++i) input[i] = 1;
        if (!run_test("All ones", input)) failures++;
    }

    // Test 6: Single element differing from 1 (e.g., 7 at some position), rest are 1
    // Expected:
    //  - output at the index of 7 is 1 (product of all others)
    //  - all other positions are 7
    {
        int input[ARRAY_SIZE];
        for (int i = 0; i < ARRAY_SIZE; ++i) input[i] = 1;
        int idx = 100; // arbitrary position
        input[idx] = 7;
        if (!run_test("Single non-one element at index 100", input)) failures++;
    }

    if (failures == 0) {
        std::cout << "All tests PASSED.\n";
        return 0;
    } else {
        std::cout << failures << " test(s) FAILED.\n";
        return 1;
    }
}