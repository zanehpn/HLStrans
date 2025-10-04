// contents of matmul_partition_tb.cpp
#include <iostream>
#include <vector>
#include <random>
#include <cassert>
#include <iomanip>

// Include the source to access matmul_partition (no main() defined there)
#include "matmul_partition.cpp"

// Helper to index a flat dim x dim matrix
static inline int idx(int r, int c, int dim) {
    return r * dim + c;
}

// Compute reference matrix multiplication C = A * B
void matmul_ref(const std::vector<int>& A, const std::vector<int>& B, std::vector<int>& C, int dim) {
    std::fill(C.begin(), C.end(), 0);
    for (int i = 0; i < dim; ++i) {
        for (int k = 0; k < dim; ++k) {
            int a = A[idx(i, k, dim)];
            for (int j = 0; j < dim; ++j) {
                C[idx(i, j, dim)] += a * B[idx(k, j, dim)];
            }
        }
    }
}

// Fill A as identity matrix
void fill_identity(std::vector<int>& A, int dim) {
    std::fill(A.begin(), A.end(), 0);
    for (int i = 0; i < dim; ++i) {
        A[idx(i, i, dim)] = 1;
    }
}

// Fill matrix with random small integers in [low, high]
void fill_random(std::vector<int>& M, int dim, int low = -5, int high = 5, uint32_t seed = 42) {
    std::mt19937 rng(seed);
    std::uniform_int_distribution<int> dist(low, high);
    for (int i = 0; i < dim * dim; ++i) {
        M[i] = dist(rng);
    }
}

// Fill matrix with a constant value
void fill_constant(std::vector<int>& M, int dim, int value) {
    std::fill(M.begin(), M.end(), value);
}

// Compare two matrices and assert equality
void assert_equal(const std::vector<int>& A, const std::vector<int>& B, int dim, const char* msg) {
    assert(A.size() == B.size());
    for (int i = 0; i < dim * dim; ++i) {
        if (A[i] != B[i]) {
            std::cerr << "Mismatch at index " << i << " (" << (i / dim) << "," << (i % dim)
                      << "): expected " << B[i] << ", got " << A[i]
                      << " - " << msg << std::endl;
            assert(false && "Matrix mismatch");
        }
    }
}

// Print a small portion of the matrix (top-left corner)
void print_matrix(const std::vector<int>& M, int dim, int rows = 4, int cols = 4, const char* name = "M") {
    int rmax = std::min(dim, rows);
    int cmax = std::min(dim, cols);
    std::cout << name << " (top-left " << rmax << "x" << cmax << "):" << std::endl;
    for (int i = 0; i < rmax; ++i) {
        for (int j = 0; j < cmax; ++j) {
            std::cout << std::setw(4) << M[idx(i, j, dim)] << " ";
        }
        std::cout << std::endl;
    }
}

int main() {
    // Important: The kernel uses an internal MAX_DIM of 16 and the inner loop iterates over MAX_DIM.
    // To ensure deterministic behavior, use dim == MAX_DIM.
    const int dim = MAX_DIM;

    // Allocate matrices
    std::vector<int> A(dim * dim);
    std::vector<int> B(dim * dim);
    std::vector<int> C_out(dim * dim);
    std::vector<int> C_ref(dim * dim);

    // Test 1: Identity * Random = Random
    // Expectation: Multiplying identity matrix A with matrix B should return B unchanged.
    {
        std::cout << "Test 1: Identity * Random = Random" << std::endl;
        fill_identity(A, dim);
        fill_random(B, dim, -5, 5, 12345);
        matmul_ref(A, B, C_ref, dim);

        // rep_count = 1
        matmul_partition(A.data(), B.data(), C_out.data(), dim, 1);

        assert_equal(C_out, C_ref, dim, "Identity * Random");
        print_matrix(B, dim, 4, 4, "B (input)");
        print_matrix(C_out, dim, 4, 4, "C_out (A*B)");
        std::cout << "Test 1 passed.\n" << std::endl;
    }

    // Test 2: Random * Random = Reference
    // Expectation: Output should match software reference multiplication.
    {
        std::cout << "Test 2: Random * Random = Reference" << std::endl;
        fill_random(A, dim, -3, 3, 777);
        fill_random(B, dim, -3, 3, 999);
        matmul_ref(A, B, C_ref, dim);

        // rep_count = 3 (the kernel recomputes; output should be the same)
        matmul_partition(A.data(), B.data(), C_out.data(), dim, 3);

        assert_equal(C_out, C_ref, dim, "Random * Random with rep_count=3");
        print_matrix(A, dim, 4, 4, "A (input)");
        print_matrix(B, dim, 4, 4, "B (input)");
        print_matrix(C_out, dim, 4, 4, "C_out (A*B)");
        std::cout << "Test 2 passed.\n" << std::endl;
    }

    // Test 3: Zero * Random = Zero
    // Expectation: Any matrix multiplied by a zero matrix yields a zero matrix.
    {
        std::cout << "Test 3: Zero * Random = Zero" << std::endl;
        fill_constant(A, dim, 0);
        fill_random(B, dim, -7, 7, 2024);
        matmul_ref(A, B, C_ref, dim);

        // rep_count = 2
        matmul_partition(A.data(), B.data(), C_out.data(), dim, 2);

        assert_equal(C_out, C_ref, dim, "Zero * Random");
        print_matrix(C_out, dim, 2, 6, "C_out (should be all zeros in shown region)");
        std::cout << "Test 3 passed.\n" << std::endl;
    }

    // Test 4: Random * Identity = Random
    // Expectation: Multiplying by identity on the right returns the original matrix.
    {
        std::cout << "Test 4: Random * Identity = Random" << std::endl;
        fill_random(A, dim, -4, 4, 4242);
        fill_identity(B, dim);
        matmul_ref(A, B, C_ref, dim);

        // rep_count = 1
        matmul_partition(A.data(), B.data(), C_out.data(), dim, 1);

        assert_equal(C_out, C_ref, dim, "Random * Identity");
        print_matrix(A, dim, 4, 4, "A (input)");
        print_matrix(C_out, dim, 4, 4, "C_out (A*I)");
        std::cout << "Test 4 passed.\n" << std::endl;
    }

    std::cout << "All tests passed successfully." << std::endl;
    return 0;
}