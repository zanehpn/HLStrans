// contents of vector_addition_tb.cpp
#include <iostream>
#include <iomanip>
#include <random>
#include <cassert>
#include <climits>

// Include the DUT source to access vector_addition() and VECTOR_SIZE.
#include "vector_addition.cpp"

using data_t = ap_int<32>;

static bool arrays_equal(const data_t* C, const data_t* E) {
    for (int i = 0; i < VECTOR_SIZE; ++i) {
        if (C[i] != E[i]) {
            std::cerr << "Mismatch at index " << i
                      << ": got " << C[i].to_int()
                      << ", expected " << E[i].to_int() << std::endl;
            return false;
        }
    }
    return true;
}

static void print_sample(const char* label, const data_t* A, const data_t* B, const data_t* C) {
    // Print a few sample entries to visualize results
    int idxs[] = {0, 1, 2, VECTOR_SIZE - 1};
    std::cout << label << " samples:\n";
    for (int j = 0; j < 4; ++j) {
        int i = idxs[j];
        std::cout << "  i=" << i
                  << "  A=" << A[i].to_int()
                  << "  B=" << B[i].to_int()
                  << "  C=" << C[i].to_int() << "\n";
    }
    std::cout << std::endl;
}

int main() {
    data_t A[VECTOR_SIZE];
    data_t B[VECTOR_SIZE];
    data_t C[VECTOR_SIZE];
    data_t E[VECTOR_SIZE];

    // Test Case 1: Zero vectors (A=0, B=0 => C=0)
    for (int i = 0; i < VECTOR_SIZE; ++i) {
        A[i] = data_t(0);
        B[i] = data_t(0);
        E[i] = data_t(0);
    }
    vector_addition(A, B, C);
    print_sample("Test 1 (Zero vectors)", A, B, C);
    assert(arrays_equal(C, E) && "Test 1 failed: C should be all zeros.");
    std::cout << "Test 1 passed.\n\n";

    // Test Case 2: Linear positive sequence (A=i, B=2*i => C=3*i)
    for (int i = 0; i < VECTOR_SIZE; ++i) {
        A[i] = data_t(i);
        B[i] = data_t(2 * i);
        E[i] = data_t(3 * i);
    }
    vector_addition(A, B, C);
    print_sample("Test 2 (Linear positive)", A, B, C);
    assert(arrays_equal(C, E) && "Test 2 failed: C[i] should equal 3*i.");
    std::cout << "Test 2 passed.\n\n";

    // Test Case 3: Negative vs positive (A=-i, B=i => C=0)
    for (int i = 0; i < VECTOR_SIZE; ++i) {
        A[i] = data_t(-i);
        B[i] = data_t(i);
        E[i] = data_t(0);
    }
    vector_addition(A, B, C);
    print_sample("Test 3 (Negative + Positive)", A, B, C);
    assert(arrays_equal(C, E) && "Test 3 failed: C should be all zeros.");
    std::cout << "Test 3 passed.\n\n";

    // Test Case 4: Overflow behavior (A=INT32_MAX, B=1 => C should wrap to INT32_MIN)
    for (int i = 0; i < VECTOR_SIZE; ++i) {
        A[i] = data_t(INT32_MAX);
        B[i] = data_t(1);
        E[i] = data_t(INT32_MIN);
    }
    vector_addition(A, B, C);
    print_sample("Test 4 (Overflow wrap)", A, B, C);
    assert(arrays_equal(C, E) && "Test 4 failed: Expected wrap to INT32_MIN.");
    std::cout << "Test 4 passed.\n\n";

    // Test Case 5: Randomized values (check general correctness across wide range)
    {
        std::mt19937 rng(12345); // fixed seed for repeatability
        std::uniform_int_distribution<int32_t> dist(INT32_MIN, INT32_MAX);

        for (int i = 0; i < VECTOR_SIZE; ++i) {
            int32_t a = dist(rng);
            int32_t b = dist(rng);
            A[i] = data_t(a);
            B[i] = data_t(b);
            E[i] = A[i] + B[i]; // Expected sum using ap_int semantics
        }
        vector_addition(A, B, C);
        print_sample("Test 5 (Randomized)", A, B, C);
        assert(arrays_equal(C, E) && "Test 5 failed: Randomized addition mismatch.");
        std::cout << "Test 5 passed.\n\n";
    }

    std::cout << "All tests passed successfully." << std::endl;
    return 0;
}