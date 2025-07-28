#include "sparse_matrix_multiply_HLS.h"

typedef ap_fixed<16, 5> data_t;

#define N 64  // Rows of A and C
#define M 64  // Columns of A and Rows of B
#define K 64  // Columns of B and C

void sparse_matrix_multiply_HLS(data_t values_A[N * M],
                              int column_indices_A[N * M],
                              int row_ptr_A[N + 1],
                              data_t values_B[M * K],
                              int row_indices_B[M * K],
                              int col_ptr_B[M + 1],
                              data_t C[N][K]) 
{
    data_t local_values_A[N * M];
    int   local_column_indices_A[N * M];
    int   local_row_ptr_A[N + 1];

    data_t local_values_B[M * K];
    int   local_row_indices_B[M * K];
    int   local_col_ptr_B[M + 1];

    data_t accum[N][K];

    // 1) Load A (CSR) into local buffers
    for (int i = 0; i < N + 1; i++) {
        local_row_ptr_A[i] = row_ptr_A[i];
    }
    int nnzA = row_ptr_A[N];
    for (int i = 0; i < nnzA; i++) {
        #pragma HLS loop_tripcount min= 1  max=256
        local_values_A[i]        = values_A[i];
        local_column_indices_A[i] = column_indices_A[i];
    }

    // 2) Load B (CSC) into local buffers
    for (int i = 0; i < M + 1; i++) {
        local_col_ptr_B[i] = col_ptr_B[i];
    }
    int nnzB = col_ptr_B[M];
    for (int i = 0; i < nnzB; i++) {
        #pragma HLS loop_tripcount min= 1  max=256
        local_values_B[i]      = values_B[i];
        local_row_indices_B[i] = row_indices_B[i];
    }

    // 3) Initialize accumulator
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < K; j++) {
            accum[i][j] = (data_t)0;
        }
    }

    // 4) Sparse matrix multiplication
    for (int i = 0; i < N; i++) {
        int startA = local_row_ptr_A[i];
        int endA   = local_row_ptr_A[i + 1];
        for (int a = startA; a < endA; a++) {
            #pragma HLS loop_tripcount min= 1  max=256
            data_t a_val = local_values_A[a];
            int    col   = local_column_indices_A[a];
            int    startB = local_col_ptr_B[col];
            int    endB   = local_col_ptr_B[col + 1];
            for (int b = startB; b < endB; b++) {
                #pragma HLS loop_tripcount min= 1  max=256
                data_t b_val = local_values_B[b];
                int    row   = local_row_indices_B[b];
                accum[i][row] += a_val * b_val;
            }
        }
    }

    // 5) Write back result
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < K; j++) {
            C[i][j] = accum[i][j];
        }
    }
}
