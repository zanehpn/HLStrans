// vec_matrix_tb.cpp
#include "vec_matrix.h"
#include "hls_math.h"
#include <iostream>
#include <vector>
#include <cstdlib>
#include <ctime>

// CPU reference for MMV
void cpu_vec_matrix(const std::vector<std::vector<data_t>>& A,
                    const std::vector<data_t>&  B,
                    std::vector<data_t>&        C,
                    int rows = 16,
                    int cols = 64) {
    for (int i = 0; i < rows; ++i) {
        data_t acc = 0;
        for (int j = 0; j < cols; ++j) {
            acc += A[i][j] * B[j];
        }
        C[i] = acc;
    }
}

int main() {
    std::srand(std::time(nullptr));
    const int ROWS = 16;
    const int COLS = 64;

    // Allocate host arrays
    static data_t DRAM_1[ROWS][COLS];
    static data_t DRAM_2[COLS];
    static data_t DRAM_3[ROWS];  // unused
    static data_t DRAM_4[ROWS];
    static data_t ref_out[ROWS];

    // Initialize inputs with random values
    for (int i = 0; i < ROWS; ++i) {
        for (int j = 0; j < COLS; ++j) {
            DRAM_1[i][j] = (data_t)((std::rand() % 100) / 10.0);
        }
    }
    for (int j = 0; j < COLS; ++j) {
        DRAM_2[j] = (data_t)((std::rand() % 100) / 10.0);
    }

    // Call HLS kernel
    vec_matrix(DRAM_1, DRAM_2, DRAM_3, DRAM_4);

    // Compute golden output
    std::vector<std::vector<data_t>> A(ROWS, std::vector<data_t>(COLS));
    std::vector<data_t> B(COLS);
    std::vector<data_t> C_ref(ROWS);
    for (int i = 0; i < ROWS; ++i)
        for (int j = 0; j < COLS; ++j)
            A[i][j] = DRAM_1[i][j];
    for (int j = 0; j < COLS; ++j)
        B[j] = DRAM_2[j];

    cpu_vec_matrix(A, B, C_ref, ROWS, COLS);

    // Verify results
    bool pass = true;
    for (int i = 0; i < ROWS; ++i) {
        // allow small floating error
        data_t hw = DRAM_4[i];
        data_t sw = C_ref[i];
        if (hls::abs(hw - sw) > (data_t)1e-3) {
            std::cout << "Mismatch at row " << i
                      << ": HW=" << hw << " REF=" << sw << std::endl;
            pass = false;
        }
    }

    std::cout << (pass ? "PASS" : "FAIL") << std::endl;
    return pass ? 0 : 1;
}
