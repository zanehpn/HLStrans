#include <stddef.h>
#include <ap_fixed.h>

#define M_ROWS 16
#define N_COLS 64

typedef ap_fixed<16, 5> data_t;

/**
 * Simple C implementation of vec_matrix:
 *   - Loads a 16×64 matrix A and a 64-vector B from DRAM
 *   - Computes out[i] = sum_j A[i][j] * B[j]
 *   - Ignores the third DRAM input (unused)
 */
void vec_matrix(
    data_t DRAM_1[M_ROWS][N_COLS],  // matrix A
    data_t DRAM_2[N_COLS],          // vector B
    data_t DRAM_3[M_ROWS],          // unused
    data_t       DRAM_4[M_ROWS]           // output vector
) {
    for (size_t i = 0; i < M_ROWS; ++i) {
        data_t acc = 0.0f;
        for (size_t j = 0; j < N_COLS; ++j) {
            acc += DRAM_1[i][j] * DRAM_2[j];
        }
        DRAM_4[i] = acc;
    }
}
