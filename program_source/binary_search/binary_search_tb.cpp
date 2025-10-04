// contents of binary_search_tb.cpp
#include <iostream>
#include <cassert>
#include <ap_int.h>

// Include the source under test (no main() inside, provides binary_search and ARRAY_SIZE)
#include "binary_search.cpp"

// Helper to run a test expecting an exact index
void run_test_exact(ap_int<32> array[ARRAY_SIZE], ap_int<32> key, int expected_index, const char* description) {
    ap_int<32> index;
    binary_search(array, key, index);
    std::cout << description << " | key=" << (int)key << " => index=" << (int)index << " (expected " << expected_index << ")\n";
    assert((int)index == expected_index);
}

// Helper to run a test expecting the key to be found at some valid index
void run_test_found(ap_int<32> array[ARRAY_SIZE], ap_int<32> key, const char* description) {
    ap_int<32> index;
    binary_search(array, key, index);
    std::cout << description << " | key=" << (int)key << " => index=" << (int)index << " (expect valid index with array[index]==key)\n";
    assert((int)index >= 0 && (int)index < ARRAY_SIZE);
    assert((int)array[(int)index] == (int)key);
}

// Helper to run a test expecting the key not to be found
void run_test_not_found(ap_int<32> array[ARRAY_SIZE], ap_int<32> key, const char* description) {
    ap_int<32> index;
    binary_search(array, key, index);
    std::cout << description << " | key=" << (int)key << " => index=" << (int)index << " (expected -1)\n";
    assert((int)index == -1);
}

int main() {
    // Test array: sorted ascending sequence [0, 1, 2, ..., ARRAY_SIZE-1]
    ap_int<32> sorted_array[ARRAY_SIZE];
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        sorted_array[i] = i;
    }

    // 1) Key present at beginning
    run_test_exact(sorted_array, ap_int<32>(0), 0, "Test 1: Key present at beginning");

    // 2) Key present in middle
    run_test_exact(sorted_array, ap_int<32>(ARRAY_SIZE / 2), ARRAY_SIZE / 2, "Test 2: Key present in middle");

    // 3) Key present at end
    run_test_exact(sorted_array, ap_int<32>(ARRAY_SIZE - 1), ARRAY_SIZE - 1, "Test 3: Key present at end");

    // 4) Key present at some random position
    run_test_exact(sorted_array, ap_int<32>(777), 777, "Test 4: Key present at a random index");

    // 5) Key less than the smallest element (should not be found)
    run_test_not_found(sorted_array, ap_int<32>(-10), "Test 5: Key less than min (not found)");

    // 6) Key greater than the largest element (should not be found)
    run_test_not_found(sorted_array, ap_int<32>(ARRAY_SIZE + 100), "Test 6: Key greater than max (not found)");

    // 7) Array with all elements equal; search for that value should find a valid index
    ap_int<32> const_array[ARRAY_SIZE];
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        const_array[i] = 42;
    }
    run_test_found(const_array, ap_int<32>(42), "Test 7: Constant array; key present anywhere");

    // 8) Constant array; search for a different value should not be found
    run_test_not_found(const_array, ap_int<32>(7), "Test 8: Constant array; key absent");

    // 9) Small custom array subset embedded in full size array
    //    We place a small known pattern at the front of an otherwise sorted array.
    ap_int<32> patterned_array[ARRAY_SIZE];
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        patterned_array[i] = i;
    }
    patterned_array[0] = 1000;  // break the pattern at the start
    patterned_array[1] = 1001;
    patterned_array[2] = 1002;
    // Searching a key inside the broken region should still succeed because the algorithm assumes sorted data.
    // This test demonstrates the importance of sorted input. We search for a value known to be in the sorted portion.
    run_test_exact(patterned_array, ap_int<32>(500), 500, "Test 9: Patterned array; key in sorted region");

    std::cout << "All tests completed successfully.\n";
    return 0;
}