#include "sparse_matrix_multiply_HLS.h"

typedef ap_fixed<16, 5> data_t;

#define N 64  
#define M 64  
#define K 64  

#define BLOCK_SIZE 16

void sparse_matrix_multiply_HLS(data_t values_A[N * M],
                              int column_indices_A[N * M],
                              int row_ptr_A[N + 1],
                              data_t values_B[M * K],
                              int row_indices_B[M * K],
                              int col_ptr_B[M + 1],
                              data_t C[N][K]) 
{
    data_t local_values_A[BLOCK_SIZE * M];
    int   local_column_indices_A[BLOCK_SIZE * M];
    int   local_row_ptr_A[N + 1];

    data_t local_values_B[M * BLOCK_SIZE];
    int   local_row_indices_B[M * BLOCK_SIZE];
    int   local_col_ptr_B[M + 1];

    data_t accum[BLOCK_SIZE][K];

    // Load row pointers for A and B
    for (int i = 0; i < N + 1; i++) {
        local_row_ptr_A[i] = row_ptr_A[i];
    }
    for (int i = 0; i < M + 1; i++) {
        local_col_ptr_B[i] = col_ptr_B[i];
    }

    // Compute in blocks
    for (int block_i = 0; block_i < N; block_i += BLOCK_SIZE) {
        int end_i = block_i + BLOCK_SIZE > N ? N : block_i + BLOCK_SIZE;

        // Load block of A
        for (int i = block_i; i < end_i; i++) {
            int startA = local_row_ptr_A[i];
            int endA = local_row_ptr_A[i + 1];
            for (int a = startA; a < endA; a++) {
                local_values_A[(i - block_i) * M + a - startA] = values_A[a];
                local_column_indices_A[(i - block_i) * M + a - startA] = column_indices_A[a];
            }
        }

        // Process each column block of B
        for (int block_j = 0; block_j < K; block_j += BLOCK_SIZE) {
            int end_j = block_j + BLOCK_SIZE > K ? K : block_j + BLOCK_SIZE;

            // Initialize accumulation registers
            for (int i = 0; i < end_i - block_i; i++) {
                for (int j = 0; j < end_j - block_j; j++) {
                    accum[i][j] = (data_t)0;
                }
            }

            // Load block of B
            for (int j = block_j; j < end_j; j++) {
                int startB = local_col_ptr_B[j];
                int endB = local_col_ptr_B[j + 1];
                for (int b = startB; b < endB; b++) {
                    local_values_B[(j - block_j) * M + b - startB] = values_B[b];
                    local_row_indices_B[(j - block_j) * M + b - startB] = row_indices_B[b];
                }
            }

            // Perform multiplication for the current block
            for (int i = block_i; i < end_i; i++) {
                int startA = local_row_ptr_A[i];
                int endA = local_row_ptr_A[i + 1];
                for (int a = startA; a < endA; a++) {
                    int col = local_column_indices_A[(i - block_i) * M + a - startA];
                    int startB = local_col_ptr_B[col];
                    int endB = local_col_ptr_B[col + 1];
                    for (int b = startB; b < endB; b++) {
                        int row = local_row_indices_B[(col - block_j) * M + b - startB];
                        if (row >= block_j && row < end_j) {
                            accum[i - block_i][row - block_j] += local_values_A[(i - block_i) * M + a - startA] * local_values_B[(row - block_j) * M + b - startB];
                        }
                    }
                }
            }

            // Store results back to global memory
            for (int i = block_i; i < end_i; i++) {
                for (int j = block_j; j < end_j; j++) {
                    C[i][j] = accum[i - block_i][j - block_j];
                }
            }
        }
    }
}