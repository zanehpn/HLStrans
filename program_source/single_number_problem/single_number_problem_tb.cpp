// contents of single_number_problem_tb.cpp
#include <iostream>
#include <cassert>

// Include the source to access single_number_problem and ARRAY_SIZE
#include "single_number_problem.cpp"

int main() {
    using std::cout;
    using std::endl;

    int tests_passed = 0;

    // Test 1: All zeros - XOR of all zeros should be zero
    {
        ap_int<32> input_array[ARRAY_SIZE];
        for (int i = 0; i < ARRAY_SIZE; ++i) {
            input_array[i] = 0;
        }
        ap_int<32> result;
        single_number_problem(input_array, result);
        cout << "Test 1 (All zeros) result = " << result.to_int() << endl;
        assert(result == 0);
        tests_passed++;
    }

    // Test 2: Single unique number amid zeros - the result should equal that number
    {
        ap_int<32> input_array[ARRAY_SIZE];
        for (int i = 0; i < ARRAY_SIZE; ++i) {
            input_array[i] = 0;
        }
        ap_int<32> unique_val = 42;
        input_array[513] = unique_val; // Place the unique value somewhere in the middle

        ap_int<32> result;
        single_number_problem(input_array, result);
        cout << "Test 2 (Single unique among zeros) result = " << result.to_int() << endl;
        assert(result == unique_val);
        tests_passed++;
    }

    // Test 3: Multiple duplicate pairs plus one unique value
    // All pairs cancel out via XOR; only the unique value remains
    {
        ap_int<32> input_array[ARRAY_SIZE];
        for (int i = 0; i < ARRAY_SIZE; ++i) {
            input_array[i] = 0;
        }

        int idx = 0;
        // Create 511 pairs (1022 elements) so they cancel out
        for (int p = 0; p < 511; ++p) {
            ap_int<32> v = p * 17 - 1000; // Some deterministic pattern
            input_array[idx++] = v;
            input_array[idx++] = v;
        }

        // Add a unique number that should remain after XOR
        ap_int<32> unique_val = 123456789;
        input_array[idx++] = unique_val;

        // Fill the remainder with zeros (1 element left)
        while (idx < ARRAY_SIZE) {
            input_array[idx++] = 0;
        }

        ap_int<32> result;
        single_number_problem(input_array, result);
        cout << "Test 3 (Duplicate pairs + unique) result = " << result.to_int() << endl;
        assert(result == unique_val);
        tests_passed++;
    }

    // Test 4: Include negative numbers with pairs and a unique negative number
    // XOR with signed integers should still work correctly
    {
        ap_int<32> input_array[ARRAY_SIZE];
        for (int i = 0; i < ARRAY_SIZE; ++i) {
            input_array[i] = 0;
        }

        // Add some duplicate negative pairs
        input_array[0] = -100;
        input_array[1] = -100;

        input_array[2] = -1;
        input_array[3] = -1;

        input_array[4] = -32768;
        input_array[5] = -32768;

        // Add duplicate zeros (still cancels out to zero)
        input_array[6] = 0;
        input_array[7] = 0;

        // Unique negative value
        ap_int<32> unique_val = -12345;
        input_array[8] = unique_val;

        // Rest remain zero
        ap_int<32> result;
        single_number_problem(input_array, result);
        cout << "Test 4 (Negative pairs + unique negative) result = " << result.to_int() << endl;
        assert(result == unique_val);
        tests_passed++;
    }

    // Test 5: Full array with mixed positions - pairs scattered across the array
    // Ensures order does not affect XOR outcome
    {
        ap_int<32> input_array[ARRAY_SIZE];
        for (int i = 0; i < ARRAY_SIZE; ++i) {
            input_array[i] = 0;
        }

        // Scatter some pairs
        input_array[10] = 5555;
        input_array[999] = 5555;

        input_array[100] = -2222;
        input_array[500] = -2222;

        input_array[256] = 0xABCDEF01;
        input_array[700] = 0xABCDEF01;

        input_array[0] = 77;
        input_array[1023] = 77;

        // Unique value somewhere else
        ap_int<32> unique_val = 0x7FFFFFFF;
        input_array[512] = unique_val;

        ap_int<32> result;
        single_number_problem(input_array, result);
        cout << "Test 5 (Scattered pairs + unique) result = " << result.to_int() << endl;
        assert(result == unique_val);
        tests_passed++;
    }

    cout << "All tests passed: " << tests_passed << endl;
    return 0;
}