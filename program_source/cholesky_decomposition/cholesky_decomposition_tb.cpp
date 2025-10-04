// contents of cholesky_decomposition_tb.cpp
#include <iostream>
#include <cmath>
#include <cassert>
#include <iomanip>

// Match the macro and function signature used in the source file
#define MATRIX_SIZE 1024

// Forward declaration of the function under test.
// This must match the signature in cholesky_decomposition.cpp.
void cholesky_decomposition(double A[MATRIX_SIZE][MATRIX_SIZE], double L[MATRIX_SIZE][MATRIX_SIZE]);

// Helper: approximate equality check for floating-point values
static inline bool nearly_equal(double a, double b, double tol = 1e-9) {
    return std::fabs(a - b) <= tol * std::max(1.0, std::max(std::fabs(a), std::fabs(b)));
}

// Helper: print a small submatrix (for debugging and demonstration)
void print_submatrix(const char* name, double (*M)[MATRIX_SIZE], int rows = 6, int cols = 6) {
    std::cout << name << " (top-left " << rows << "x" << cols << "):\n";
    for (int i = 0; i < rows; ++i) {
        for (int j = 0; j < cols; ++j) {
            std::cout << std::setw(12) << M[i][j] << " ";
        }
        std::cout << "\n";
    }
}

int main() {
    // Allocate matrices on the heap to avoid stack overflow
    auto A = new double[MATRIX_SIZE][MATRIX_SIZE];
    auto L = new double[MATRIX_SIZE][MATRIX_SIZE];

    // Test Case 1: Diagonal SPD matrix
    // - Construct A as a diagonal matrix with strictly positive entries.
    // - Expected: L should be diagonal with entries sqrt(diagonal of A), and all off-diagonal entries zero.
    // Note: We verify only a small top-left subsection in assertions/prints for brevity.
    for (int i = 0; i < MATRIX_SIZE; ++i) {
        for (int j = 0; j < MATRIX_SIZE; ++j) {
            A[i][j] = 0.0;
            L[i][j] = 0.0;
        }
    }
    for (int i = 0; i < MATRIX_SIZE; ++i) {
        // Set a positive diagonal that varies with i
        // Keep values moderate to avoid FP issues.
        A[i][i] = 1.0 + (i % 7); // values in [1,7]
    }

    std::cout << "Running Cholesky decomposition on a " << MATRIX_SIZE << "x" << MATRIX_SIZE
              << " diagonal SPD matrix..." << std::endl;

    cholesky_decomposition(A, L);

    // Validate a small top-left block to ensure correctness
    const int checkN = 8; // check first 8x8 block
    for (int i = 0; i < checkN; ++i) {
        // Diagonal should be sqrt of A[i][i]
        double expected_diag = std::sqrt(A[i][i]);
        assert(nearly_equal(L[i][i], expected_diag, 1e-9));
        // Below-diagonal should be zero (since A had zero off-diagonals)
        for (int j = 0; j < i; ++j) {
            assert(nearly_equal(L[i][j], 0.0, 1e-12));
        }
        // Above-diagonal should remain zero (we initialized L to zero and function writes only lower-triangular)
        for (int j = i + 1; j < checkN; ++j) {
            assert(nearly_equal(L[i][j], 0.0, 1e-12));
        }
    }

    // Reconstruct the top-left block of A using computed L (A' = L * L^T) and compare with original A
    for (int i = 0; i < checkN; ++i) {
        for (int j = 0; j < checkN; ++j) {
            double sum = 0.0;
            for (int k = 0; k <= std::min(i, j); ++k) {
                sum += L[i][k] * L[j][k];
            }
            assert(nearly_equal(sum, A[i][j], 1e-8));
        }
    }

    // Print small sections for manual inspection
    print_submatrix("A", A, 6, 6);
    print_submatrix("L", L, 6, 6);

    std::cout << "Test Case 1 PASSED: Diagonal SPD matrix factorization validated on top-left block." << std::endl;

    // Optional Test Case 2: Non-SPD example to illustrate failure mode
    // - Modify one diagonal entry to be negative and observe NaN on the corresponding L diagonal.
    // Caution: The decomposition is undefined for non-SPD matrices. We only inspect a small index.
    for (int i = 0; i < MATRIX_SIZE; ++i) {
        for (int j = 0; j < MATRIX_SIZE; ++j) {
            A[i][j] = 0.0;
            L[i][j] = 0.0;
        }
    }
    for (int i = 0; i < MATRIX_SIZE; ++i) A[i][i] = 2.0;
    A[5][5] = -1.0; // introduce a negative diagonal to break positive-definiteness

    std::cout << "Running Cholesky decomposition on a non-SPD matrix (expect NaN on a diagonal)..." << std::endl;
    cholesky_decomposition(A, L);

    // The diagonal at the non-SPD pivot should be NaN due to sqrt(negative)
    if (!std::isnan(L[5][5])) {
        std::cerr << "Expected NaN at L[5][5] for non-SPD input, got: " << L[5][5] << std::endl;
        return 1;
    } else {
        std::cout << "Observed expected NaN at L[5][5] for non-SPD input." << std::endl;
    }

    std::cout << "All tests completed." << std::endl;

    delete[] A;
    delete[] L;

    return 0;
}