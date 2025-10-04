// contents of matrix_multiply_tb.cpp

#include <iostream>
#include <cassert>

// Include the DUT implementation (no main() defined there)
#include "matrix_multiply.cpp"

// Allocate large matrices with static storage to avoid stack overflow.
// They are zero-initialized by default.
static ap_int<16> A[SIZE][SIZE];
static ap_int<16> B[SIZE][SIZE];
static ap_int<32> C[SIZE][SIZE];

int main() {
    std::cout << "Starting matrix_multiply testbench with SIZE=" << SIZE << std::endl;

    // Test Case: Sparse matrices with selective non-zero entries
    // Goal:
    //  - Exercise accumulation across 'k' (C[i][j] = sum_k A[i][k] * B[k][j])
    //  - Verify sign handling and multiple contributions into a single C[i][j]
    //
    // Construction:
    //  - Non-zero entries in A:
    //      A[7][2] = 4
    //      A[7][5] = -6
    //      A[100][200] = 3
    //      A[0][0] = -2
    //  - Non-zero entries in B:
    //      B[2][3] = 1
    //      B[5][3] = -1
    //      B[0][0] = 5
    //      B[200][400] = 7
    //
    // Expected:
    //  - C[7][3] = A[7][2]*B[2][3] + A[7][5]*B[5][3] = 4*1 + (-6)*(-1) = 10
    //  - C[0][0] = A[0][0]*B[0][0] = (-2)*5 = -10
    //  - C[100][400] = A[100][200]*B[200][400] = 3*7 = 21
    //  - Selected other positions remain zero (e.g., C[7][2], C[0][1], C[50][50])

    // Populate selective entries in A
    A[7][2] = 4;
    A[7][5] = -6;
    A[100][200] = 3;
    A[0][0] = -2;

    // Populate selective entries in B
    B[2][3] = 1;
    B[5][3] = -1;
    B[0][0] = 5;
    B[200][400] = 7;

    // Run the DUT
    std::cout << "Invoking matrix_multiply..." << std::endl;
    matrix_multiply(A, B, C);
    std::cout << "Computation complete. Verifying results..." << std::endl;

    // Verify expected non-zero outputs
    ap_int<32> exp_73 = 10;   // C[7][3]
    ap_int<32> exp_00 = -10;  // C[0][0]
    ap_int<32> exp_100_400 = 21; // C[100][400]

    assert(C[7][3] == exp_73 && "C[7][3] mismatch");
    assert(C[0][0] == exp_00 && "C[0][0] mismatch");
    assert(C[100][400] == exp_100_400 && "C[100][400] mismatch");

    // Verify selected zeros
    assert(C[7][2] == 0 && "C[7][2] should be zero");
    assert(C[0][1] == 0 && "C[0][1] should be zero");
    assert(C[50][50] == 0 && "C[50][50] should be zero");
    assert(C[1023][1023] == 0 && "C[1023][1023] should be zero");

    // Print a brief summary of checked values
    std::cout << "Checked values:" << std::endl;
    std::cout << "  C[7][3]        = " << (long long)C[7][3] << " (expected " << (long long)exp_73 << ")" << std::endl;
    std::cout << "  C[0][0]        = " << (long long)C[0][0] << " (expected " << (long long)exp_00 << ")" << std::endl;
    std::cout << "  C[100][400]    = " << (long long)C[100][400] << " (expected " << (long long)exp_100_400 << ")" << std::endl;
    std::cout << "  C[7][2]        = " << (long long)C[7][2] << " (expected 0)" << std::endl;
    std::cout << "  C[0][1]        = " << (long long)C[0][1] << " (expected 0)" << std::endl;
    std::cout << "  C[50][50]      = " << (long long)C[50][50] << " (expected 0)" << std::endl;
    std::cout << "  C[1023][1023]  = " << (long long)C[1023][1023] << " (expected 0)" << std::endl;

    std::cout << "All assertions passed. Testbench completed successfully." << std::endl;
    return 0;
}