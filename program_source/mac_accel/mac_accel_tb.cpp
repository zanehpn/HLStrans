#include "mac_accel.h"
#include <iostream>
#include <vector>
#include <cstdlib>
#include <ctime>

// CPU reference matrix multiply
void cpu_matmul(const std::vector<int>& A, const std::vector<int>& B,
                std::vector<int>& C,
                int a_row, int a_col, int b_col) {
    for (int i = 0; i < a_row; ++i) {
        for (int j = 0; j < b_col; ++j) {
            long sum = 0;
            for (int k = 0; k < a_col; ++k) {
                sum += A[i * a_col + k] * B[k * b_col + j];
            }
            C[i * b_col + j] = static_cast<int>(sum);
        }
    }
}

int main() {
    // Seed random
    std::srand(std::time(nullptr));

    // Test dimensions
    const int a_row = 8;
    const int a_col = 8;
    const int b_col = 8;

    // Allocate host matrices
    std::vector<int> A(a_row * a_col);
    std::vector<int> B(a_col * b_col);
    std::vector<int> C_hw(a_row * b_col, 0);
    std::vector<int> C_ref(a_row * b_col, 0);

    // Initialize A and B with random values
    for (int i = 0; i < a_row * a_col; ++i) {
        A[i] = std::rand() % 16;
    }
    for (int i = 0; i < a_col * b_col; ++i) {
        B[i] = std::rand() % 16;
    }

    // Call HLS hardware function
    mac_accel(A.data(), B.data(), C_hw.data(), a_row, a_col, b_col);

    // Compute CPU reference
    cpu_matmul(A, B, C_ref, a_row, a_col, b_col);

    // Verify results
    bool pass = true;
    for (int i = 0; i < a_row * b_col; ++i) {
        if (C_hw[i] != C_ref[i]) {
            std::cout << "Mismatch at index " << i
                      << ": hw=" << C_hw[i]
                      << " ref=" << C_ref[i] << std::endl;
            pass = false;
        }
    }
    if (pass) std::cout << "PASS" << std::endl;
    else     std::cout << "FAIL" << std::endl;

    return pass ? 0 : 1;
}
