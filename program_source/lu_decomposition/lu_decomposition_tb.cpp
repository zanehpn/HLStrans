// contents of lu_decomposition_tb.cpp

#include <iostream>
#include <iomanip>
#include <cmath>
#include <cassert>

// Match the signature used in lu_decomposition.cpp
#define N 1024

// Forward declaration of the function under test.
// Compile this testbench together with lu_decomposition.cpp.
extern void lu_decomposition(double A[N][N], double L[N][N], double U[N][N]);

static const double TOL = 1e-9;

// Helper: Print a small top-left submatrix for quick inspection
void printSmallMatrix(const char* name, double M[N][N], int rows = 6, int cols = 6) {
    std::cout << name << " (top-left " << rows << "x" << cols << "):\n";
    for (int i = 0; i < rows; ++i) {
        for (int j = 0; j < cols; ++j) {
            std::cout << std::setw(10) << std::setprecision(4) << std::fixed << M[i][j] << " ";
        }
        std::cout << "\n";
    }
    std::cout << std::endl;
}

// Helper: Check near-equality
bool approxEqual(double a, double b, double tol = TOL) {
    return std::fabs(a - b) <= tol;
}

// Test 1: Identity matrix input.
// Expectation: L remains identity; U becomes identity; A remains unchanged.
void test_identity() {
    static double A[N][N], L[N][N], U[N][N];

    // Initialize A as identity
    for (int i = 0; i < N; ++i) {
        for (int j = 0; j < N; ++j) {
            A[i][j] = (i == j) ? 1.0 : 0.0;
        }
    }

    lu_decomposition(A, L, U);

    // Validate L is identity (check a 6x6 block and a couple random indices)
    for (int i = 0; i < 6; ++i) {
        for (int j = 0; j < 6; ++j) {
            if (i == j) {
                assert(approxEqual(L[i][j], 1.0));
            } else {
                assert(approxEqual(L[i][j], 0.0));
            }
        }
    }
    // Validate U is identity (check a 6x6 block)
    for (int i = 0; i < 6; ++i) {
        for (int j = 0; j < 6; ++j) {
            if (i == j) {
                assert(approxEqual(U[i][j], 1.0));
            } else {
                assert(approxEqual(U[i][j], 0.0));
            }
        }
    }
    // Validate A unchanged (identity)
    for (int i = 0; i < 6; ++i) {
        for (int j = 0; j < 6; ++j) {
            if (i == j) {
                assert(approxEqual(A[i][j], 1.0));
            } else {
                assert(approxEqual(A[i][j], 0.0));
            }
        }
    }

    std::cout << "Test 1 (Identity matrix): PASS\n";
    printSmallMatrix("L", L);
    printSmallMatrix("U", U);
}

// Test 2: Upper-triangular matrix input with non-zero diagonal and upper elements.
// Expectation: L remains identity; U equals the original A (upper-triangular); A remains unchanged.
void test_upper_triangular() {
    static double A[N][N], L[N][N], U[N][N];

    // Initialize A as upper-triangular:
    // Diagonal: i+2 (non-zero), upper entries: some reproducible values, lower entries: 0.
    for (int i = 0; i < N; ++i) {
        for (int j = 0; j < N; ++j) {
            if (i == j) {
                A[i][j] = i + 2.0;  // ensure non-zero diagonal
            } else if (i < j) {
                A[i][j] = (i + 1) * 0.5 + (j + 1) * 0.25;  // arbitrary deterministic upper-triangular values
            } else {
                A[i][j] = 0.0;  // lower part zero
            }
        }
    }

    lu_decomposition(A, L, U);

    // Validate L is identity in a small block
    for (int i = 0; i < 6; ++i) {
        for (int j = 0; j < 6; ++j) {
            if (i == j) {
                assert(approxEqual(L[i][j], 1.0));
            } else {
                assert(approxEqual(L[i][j], 0.0));
            }
        }
    }

    // Validate U equals A (upper-triangular), check first 6x6 block
    for (int i = 0; i < 6; ++i) {
        for (int j = 0; j < 6; ++j) {
            assert(approxEqual(U[i][j], A[i][j]));
        }
    }

    // Validate A unchanged
    for (int i = 0; i < 6; ++i) {
        for (int j = 0; j < 6; ++j) {
            if (i == j) {
                assert(approxEqual(A[i][j], i + 2.0));
            } else if (i < j) {
                double expected = (i + 1) * 0.5 + (j + 1) * 0.25;
                assert(approxEqual(A[i][j], expected));
            } else {
                assert(approxEqual(A[i][j], 0.0));
            }
        }
    }

    std::cout << "Test 2 (Upper-triangular matrix): PASS\n";
    printSmallMatrix("L", L);
    printSmallMatrix("U", U);
}

// Test 3: Lower-triangular matrix input with non-zero diagonal and lower elements.
// Expectation:
//  - U should be diagonal (equal to A's diagonal), upper off-diagonals zero.
//  - L[i][k] = A[i][k] / A[k][k] for i > k.
//  - A remains unchanged since U[k][j] for j > k is zero (no submatrix updates).
void test_lower_triangular() {
    static double A[N][N], L[N][N], U[N][N];

    // Initialize A as lower-triangular:
    // Diagonal: i+3 (non-zero), lower entries: some values, upper entries: 0.
    for (int i = 0; i < N; ++i) {
        for (int j = 0; j < N; ++j) {
            if (i == j) {
                A[i][j] = i + 3.0;  // ensure non-zero diagonal
            } else if (i > j) {
                A[i][j] = (i - j + 1) * 0.3;  // arbitrary deterministic lower-triangular values
            } else {
                A[i][j] = 0.0;  // upper part zero
            }
        }
    }

    lu_decomposition(A, L, U);

    // Validate U: diagonal equals A's diagonal, upper off-diagonals are zero, lower part zero
    for (int i = 0; i < 6; ++i) {
        for (int j = 0; j < 6; ++j) {
            if (i == j) {
                assert(approxEqual(U[i][j], i + 3.0));
            } else {
                assert(approxEqual(U[i][j], 0.0));
            }
        }
    }

    // Validate L entries for a small block: L[i][k] = A[i][k] / A[k][k] for i > k; diagonal 1; above-diagonal zero
    for (int i = 0; i < 6; ++i) {
        for (int k = 0; k < 6; ++k) {
            if (i == k) {
                assert(approxEqual(L[i][k], 1.0));
            } else if (i > k) {
                double expected = A[i][k] / A[k][k];
                assert(approxEqual(L[i][k], expected));
            } else {
                assert(approxEqual(L[i][k], 0.0));
            }
        }
    }

    // Validate A unchanged
    for (int i = 0; i < 6; ++i) {
        for (int j = 0; j < 6; ++j) {
            if (i == j) {
                assert(approxEqual(A[i][j], i + 3.0));
            } else if (i > j) {
                double expected = (i - j + 1) * 0.3;
                assert(approxEqual(A[i][j], expected));
            } else {
                assert(approxEqual(A[i][j], 0.0));
            }
        }
    }

    std::cout << "Test 3 (Lower-triangular matrix): PASS\n";
    printSmallMatrix("L", L);
    printSmallMatrix("U", U);
}

int main() {
    std::cout << "Running lu_decomposition testbench...\n";

    // Run tests
    test_identity();
    test_upper_triangular();
    test_lower_triangular();

    std::cout << "All tests completed successfully.\n";
    return 0;
}