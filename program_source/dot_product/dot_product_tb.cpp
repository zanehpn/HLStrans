// contents of dot_product_tb.cpp
#include <iostream>
#include <cstdint>
#include <random>
#include <cassert>

// Include the source to access the dot_product function directly
#include "dot_product.cpp"

// Helper to compute expected dot product via a straightforward loop
static int64_t compute_expected(const int32_t A[ARRAY_SIZE], const int32_t B[ARRAY_SIZE]) {
    int64_t sum = 0;
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        sum += static_cast<int64_t>(A[i]) * static_cast<int64_t>(B[i]);
    }
    return sum;
}

// Helper to print and assert a test case result
static void run_test(const char* name, const int32_t A[ARRAY_SIZE], const int32_t B[ARRAY_SIZE], int64_t expected) {
    int64_t result = 0;
    dot_product(A, B, result);
    std::cout << name << " => result: " << result << ", expected: " << expected << std::endl;
    assert(result == expected);
}

int main() {
    // Test 1: All zeros -> expected dot product is 0
    {
        int32_t A[ARRAY_SIZE] = {0};
        int32_t B[ARRAY_SIZE] = {0};
        run_test("Test 1: All zeros", A, B, 0);
    }

    // Test 2: All ones -> expected dot product is ARRAY_SIZE
    {
        int32_t A[ARRAY_SIZE];
        int32_t B[ARRAY_SIZE];
        for (int i = 0; i < ARRAY_SIZE; ++i) {
            A[i] = 1;
            B[i] = 1;
        }
        run_test("Test 2: All ones", A, B, static_cast<int64_t>(ARRAY_SIZE));
    }

    // Test 3: A[i] = i, B[i] = i -> expected dot product is sum of squares from 0 to ARRAY_SIZE-1
    {
        int32_t A[ARRAY_SIZE];
        int32_t B[ARRAY_SIZE];
        for (int i = 0; i < ARRAY_SIZE; ++i) {
            A[i] = i;
            B[i] = i;
        }
        // Using formula: sum_{i=0}^{n} i^2 = n(n+1)(2n+1)/6 with n = ARRAY_SIZE-1
        int64_t n = ARRAY_SIZE - 1;
        int64_t expected = (n * (n + 1) * (2 * n + 1)) / 6;
        run_test("Test 3: Sum of squares", A, B, expected);
    }

    // Test 4: Random small values (deterministic seed) -> expected computed by loop
    {
        int32_t A[ARRAY_SIZE];
        int32_t B[ARRAY_SIZE];
        std::mt19937 rng(12345); // deterministic seed
        std::uniform_int_distribution<int32_t> dist(-1000, 1000);
        for (int i = 0; i < ARRAY_SIZE; ++i) {
            A[i] = dist(rng);
            B[i] = dist(rng);
        }
        int64_t expected = compute_expected(A, B);
        run_test("Test 4: Random small values", A, B, expected);
    }

    // Test 5: Alternating signs -> A[i] = i * ((i%2==0)?1:-1), B[i] = 1
    {
        int32_t A[ARRAY_SIZE];
        int32_t B[ARRAY_SIZE];
        for (int i = 0; i < ARRAY_SIZE; ++i) {
            A[i] = (i % 2 == 0) ? i : -i;
            B[i] = 1;
        }
        int64_t expected = compute_expected(A, B);
        run_test("Test 5: Alternating signs", A, B, expected);
    }

    std::cout << "All tests passed." << std::endl;
    return 0;
}