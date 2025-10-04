// contents of test_tb.cpp
#include <iostream>
#include <cassert>

// Include the source under test (provides types, N, and the function 'test')
#include "test.cpp"

// Helper to run a single test case
void run_test(const char* name, const int data[N], int expected) {
    din_t A[N];
    for (int i = 0; i < N; ++i) {
        A[i] = data[i]; // Assign int to ap_int<8>
    }

    dout_t res = test(A);
    int r = res.to_int(); // Convert ap_int<13> to int for checking/printing

    std::cout << name << ": expected " << expected << ", got " << r
              << " ... " << (r == expected ? "PASS" : "FAIL") << std::endl;
    assert(r == expected);
}

int main() {
    // Test 1: All zeros -> sum should be 0
    {
        int arr[N] = {0,0,0,0,0,0,0,0,0,0};
        run_test("Test 1 - All zeros", arr, 0);
    }

    // Test 2: Sequence 0..9 -> sum should be 45
    {
        int arr[N] = {0,1,2,3,4,5,6,7,8,9};
        run_test("Test 2 - Sequence 0..9", arr, 45);
    }

    // Test 3: All max positive (127) -> sum should be 127 * N = 1270
    {
        int arr[N];
        for (int i = 0; i < N; ++i) arr[i] = 127;
        run_test("Test 3 - All 127", arr, 127 * N);
    }

    // Test 4: Alternating + and - values -> sum should be 0
    {
        int arr[N] = {1, -1, 2, -2, 3, -3, 4, -4, 5, -5};
        run_test("Test 4 - Alternating +/-", arr, 0);
    }

    // Test 5: Alternating extremes (-128 and 127) -> sum should be (-1) * 5 = -5
    {
        int arr[N] = {-128, 127, -128, 127, -128, 127, -128, 127, -128, 127};
        run_test("Test 5 - Extremes -128/127", arr, -5);
    }

    // Test 6: Mixed random values -> sum should be -36
    {
        int arr[N] = {-12, 34, -56, 78, -90, 12, 3, -4, 5, -6};
        run_test("Test 6 - Mixed random", arr, -36);
    }

    std::cout << "All tests passed." << std::endl;
    return 0;
}