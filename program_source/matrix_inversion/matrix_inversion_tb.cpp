// contents of matrix_inversion_tb.cpp
#include <iostream>
#include <cmath>
#include <vector>
#include <string>

// Include the source to access matrix_inversion() and MATRIX_SIZE
#include "matrix_inversion.cpp"

static inline bool approx_equal(float a, float b, float eps = 1e-5f) {
    return std::fabs(a - b) <= eps;
}

int main(int argc, char** argv) {
    std::string mode = (argc > 1) ? argv[1] : "identity";

    // Allocate large matrices on the heap to avoid stack overflow
    float (*A)[MATRIX_SIZE]     = new float[MATRIX_SIZE][MATRIX_SIZE];
    float (*A_inv)[MATRIX_SIZE] = new float[MATRIX_SIZE][MATRIX_SIZE];

    if (mode == "identity") {
        // Test Case 1: Invert the identity matrix
        // Expected: The inverse of identity is identity. This validates basic setup.
        for (int i = 0; i < MATRIX_SIZE; ++i) {
            for (int j = 0; j < MATRIX_SIZE; ++j) {
                A[i][j] = (i == j) ? 1.0f : 0.0f;
                A_inv[i][j] = 0.0f;
            }
        }

        matrix_inversion(A, A_inv);

        size_t mismatches = 0;
        const float eps = 1e-5f;
        for (int i = 0; i < MATRIX_SIZE; ++i) {
            for (int j = 0; j < MATRIX_SIZE; ++j) {
                float expected = (i == j) ? 1.0f : 0.0f;
                if (!approx_equal(A_inv[i][j], expected, eps)) {
                    ++mismatches;
                    if (mismatches <= 10) {
                        std::cout << "Mismatch @ (" << i << "," << j << "): got "
                                  << A_inv[i][j] << ", expected " << expected << "\n";
                    }
                }
            }
        }
        std::cout << "[Identity Test] Total mismatches: " << mismatches
                  << " out of " << (size_t)MATRIX_SIZE * MATRIX_SIZE << "\n";
        std::cout << ((mismatches == 0) ? "[Identity Test] PASS\n" : "[Identity Test] FAIL\n");
    } else if (mode == "unit_upper") {
        // Test Case 2: Invert A = I + N, where N has 1s on the first superdiagonal and 0 elsewhere.
        // N is nilpotent; inverse(A) = I - N + N^2 - ... + (-1)^(k) N^k.
        // For this specific N, the expected inverse has entries:
        // A_inv[i][j] = (-1)^(j-i) for j >= i, and 0 for j < i.
        // We will verify select entries to ensure elimination is exercised.

        for (int i = 0; i < MATRIX_SIZE; ++i) {
            for (int j = 0; j < MATRIX_SIZE; ++j) {
                float val = 0.0f;
                if (i == j) val = 1.0f;                 // Identity part
                else if (j == i + 1) val = 1.0f;        // First superdiagonal
                A[i][j] = val;
                A_inv[i][j] = 0.0f;
            }
        }

        matrix_inversion(A, A_inv);

        auto expected_entry = [](int i, int j) -> float {
            if (j < i) return 0.0f;
            int diff = j - i;
            return (diff % 2 == 0) ? 1.0f : -1.0f;
        };

        // Verify a selection of entries to reduce output while exercising behavior
        const float eps = 1e-4f;
        size_t mismatches = 0;
        std::vector<std::pair<int,int>> samples = {
            {0,0}, {0,1}, {0,2}, {0,10}, {1,1}, {1,2}, {1,3},
            {10,10}, {10,11}, {10,12}, {100,100}, {100,101}, {100,110},
            {MATRIX_SIZE-2, MATRIX_SIZE-2},
            {MATRIX_SIZE-2, MATRIX_SIZE-1},
            {MATRIX_SIZE-1, MATRIX_SIZE-1}
        };

        for (auto &p : samples) {
            int i = p.first;
            int j = p.second;
            float expected = expected_entry(i, j);
            if (!approx_equal(A_inv[i][j], expected, eps)) {
                ++mismatches;
                std::cout << "Mismatch @ (" << i << "," << j << "): got "
                          << A_inv[i][j] << ", expected " << expected << "\n";
            }
        }

        std::cout << "[Unit Upper Test] Sample mismatches: " << mismatches
                  << " out of " << samples.size() << " samples\n";
        std::cout << ((mismatches == 0) ? "[Unit Upper Test] PASS\n" : "[Unit Upper Test] FAIL\n";
    } else {
        std::cout << "Unknown mode: " << mode << "\n"
                  << "Usage: " << argv[0] << " [identity|unit_upper]\n";
    }

    delete[] A;
    delete[] A_inv;
    return 0;
}