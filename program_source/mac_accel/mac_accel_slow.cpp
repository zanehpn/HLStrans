#include <stddef.h>
#define DATA_SIZE 12
// Maximum Array Size
#define MAX_SIZE 12
//TRIPCOUNT identifier
const unsigned int c_dim = DATA_SIZE;

void mac_accel(
    const int *a,    // input A flattened (row-major)
    const int *b,    // input B flattened (row-major)
    int       *c,    // output C flattened (row-major)
    int a_row,       // number of rows in A
    int a_col,       // number of cols in A == rows in B
    int b_col        // number of cols in B
) {
    int localA[MAX_SIZE][MAX_SIZE];
    int localB[MAX_SIZE][MAX_SIZE];
    int localC[MAX_SIZE][MAX_SIZE];

    // 1) Read A and B into local 2D arrays
    for (int i = 0; i < a_row; i++) {
        for (int j = 0; j < a_col; j++) {
            #pragma HLS LOOP_TRIPCOUNT min=c_dim*c_dim max=c_dim*c_dim
            localA[i][j] = a[i * a_col + j];
            localB[i][j] = b[i * b_col + j];
        }
    }
    // Initialize C to zero
    for (int i = 0; i < a_row; i++)
        for (int j = 0; j < b_col; j++)
        #pragma HLS LOOP_TRIPCOUNT min=c_dim max=c_dim
            localC[i][j] = 0;

    // 2) Matrix multiply: localC = localA × localB
    for (int k = 0; k < a_col; k++) {
        for (int i = 0; i < a_row; i++) {
            for (int j = 0; j < b_col; j++) {
                #pragma HLS LOOP_TRIPCOUNT min=c_dim*c_dim*c_dim max=c_dim*c_dim*c_dim
                int a_val = localA[i][k];
                int b_val = localB[k][j];
                localC[i][j] += a_val * b_val;
            }
        }
    }

    // 3) Write back C to output flattened array
    for (int i = 0; i < a_row; i++) {
        for (int j = 0; j < b_col; j++) {
            #pragma HLS LOOP_TRIPCOUNT min=c_dim*c_dim max=c_dim*c_dim
            c[i * b_col + j] = localC[i][j];
        }
    }
}
