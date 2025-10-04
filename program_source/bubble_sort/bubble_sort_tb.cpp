// contents of bubble_sort_tb.cpp
#include <iostream>
#include <vector>
#include <algorithm>
#include <random>
#include <cassert>
#include <cstdint>
#include "ap_int.h"

// Include the DUT source (no main() defined there)
#include "bubble_sort.cpp"

// Helper: check if the array is sorted in non-decreasing order
static bool is_sorted_asc(const ap_int<32> a[ARRAY_SIZE]) {
    for (int i = 0; i < ARRAY_SIZE - 1; ++i) {
        if (a[i] > a[i + 1]) return false;
    }
    return true;
}

// Helper: print first N elements of the array
static void print_first(const ap_int<32> a[ARRAY_SIZE], int n, const char* label) {
    std::cout << label << " (first " << n << "): ";
    for (int i = 0; i < n && i < ARRAY_SIZE; ++i) {
        std::cout << a[i] << (i + 1 < n ? ", " : "");
    }
    std::cout << std::endl;
}

// Test 1: Already sorted input should remain sorted
static void test_already_sorted() {
    ap_int<32> arr[ARRAY_SIZE];
    for (int i = 0; i < ARRAY_SIZE; ++i) arr[i] = i;

    bubble_sort(arr);

    // Verify it is still sorted and unchanged
    assert(is_sorted_asc(arr));
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        assert(arr[i] == i);
    }

    print_first(arr, 10, "Test 1 (Already Sorted) PASS");
}

// Test 2: Reverse sorted input should become ascending
static void test_reverse_sorted() {
    ap_int<32> arr[ARRAY_SIZE];
    for (int i = 0; i < ARRAY_SIZE; ++i) arr[i] = ARRAY_SIZE - 1 - i;

    bubble_sort(arr);

    // Verify ascending order
    assert(is_sorted_asc(arr));
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        assert(arr[i] == i);
    }

    print_first(arr, 10, "Test 2 (Reverse Sorted -> Ascending) PASS");
}

// Test 3: All equal elements should stay unchanged
static void test_all_equal() {
    ap_int<32> arr[ARRAY_SIZE];
    for (int i = 0; i < ARRAY_SIZE; ++i) arr[i] = 42;

    bubble_sort(arr);

    // Verify all values remain 42 and sorted
    assert(is_sorted_asc(arr));
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        assert(arr[i] == 42);
    }

    print_first(arr, 10, "Test 3 (All Equal) PASS");
}

// Test 4: Random data should be sorted correctly and match a reference std::sort
static void test_random_data() {
    ap_int<32> arr[ARRAY_SIZE];
    std::mt19937 rng(12345); // fixed seed for reproducibility
    std::uniform_int_distribution<int> dist(-1000000, 1000000);

    for (int i = 0; i < ARRAY_SIZE; ++i) arr[i] = dist(rng);

    // Build reference using std::vector<int> and std::sort
    std::vector<int> expected(ARRAY_SIZE);
    for (int i = 0; i < ARRAY_SIZE; ++i) expected[i] = static_cast<int>(arr[i]);
    std::sort(expected.begin(), expected.end());

    bubble_sort(arr);

    // Verify ascending order and equality to reference
    assert(is_sorted_asc(arr));
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        assert(arr[i] == expected[i]);
    }

    print_first(arr, 10, "Test 4 (Random Data) PASS");
}

// Test 5: Mixture including extreme values (INT32_MIN/INT32_MAX) and negatives
static void test_extreme_values() {
    ap_int<32> arr[ARRAY_SIZE];

    // Create a repeating pattern with extremes and a few typical values
    const int pattern[] = {INT32_MAX, 0, INT32_MIN, -1, 1, 123456789, -987654321};
    const int psize = static_cast<int>(sizeof(pattern) / sizeof(pattern[0]));
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        arr[i] = pattern[i % psize];
    }

    // Build reference sorted vector
    std::vector<int> expected(ARRAY_SIZE);
    for (int i = 0; i < ARRAY_SIZE; ++i) expected[i] = static_cast<int>(arr[i]);
    std::sort(expected.begin(), expected.end());

    bubble_sort(arr);

    // Verify ascending order and equality to reference
    assert(is_sorted_asc(arr));
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        assert(arr[i] == expected[i]);
    }

    print_first(arr, 10, "Test 5 (Extreme Values) PASS");
}

int main() {
    std::cout << "Running bubble_sort testbench with ARRAY_SIZE = " << ARRAY_SIZE << std::endl;

    test_already_sorted();
    test_reverse_sorted();
    test_all_equal();
    test_random_data();
    test_extreme_values();

    std::cout << "All tests PASSED." << std::endl;
    return 0;
}