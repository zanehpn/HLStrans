
#include "mac_accel.h"

void mac_accel(
                const int *a,   // Read-Only Matrix A
                const int *b,   // Read-Only Matrix B
                int *c,         // Output Result
                int a_row,      // Matrix A Row Size
                int a_col,      // Matrix A Col Size
                int b_col       // Matrix B Col Size
                )
{
    int b_row = a_col;
    int c_row = a_row;
    int c_col = b_col;

    // Local memory to store input and output matrices
    int localA[MAX_SIZE][MAX_SIZE];
    #pragma HLS ARRAY_PARTITION variable=localA dim=1 complete

    int localB[MAX_SIZE][MAX_SIZE];
    #pragma HLS ARRAY_PARTITION variable=localB dim=2 complete

    int localC[MAX_SIZE][MAX_SIZE];
    #pragma HLS ARRAY_PARTITION variable=localC dim=0 complete

    // Burst reads on input matrices from DDR memory
    // Read Input 
    read: for(int loc = 0, i = 0, j = 0; loc < a_row*a_col; loc++, j++) {
    #pragma HLS LOOP_TRIPCOUNT min=c_dim*c_dim max=c_dim*c_dim
    #pragma HLS PIPELINE
        if(j == a_col) { i++; j = 0;}
        localA[i][j] = a[loc];
        localB[i][j] = b[loc];
    }

    // Perform systolic matrix multiply
    // local matrices localA and localB have been partitioned in dimensions
    // 1 and 2 respectively. local matrix C has been partitioned completely

    // This partitioning enables to access MAX_SIZE elements in parallel in
    // the local matrices. Because of the mode of access of array elements,
    // we are able to perform MAX_SIZE*MAX_SIZE operations in parallel.

    // Note : i, j and k loops are interchanged.

    // The top loop systolic1 runs only for a_col iterations instead of
    // MAX_SIZE like the inner loops. The inner loops have fixed loop
    // iteration counts to enable complete unroll

    // The following diagram explains how the matrix multiply happens
    //
    //        B_0        B_1        B_2        B_3
    //         |          |          |          |
    //         v          v          v          v
    //        ___        ___        ___        ___
    //       |   |      |   |      |   |      |   |
    //  A0_->|C00| ---- |C01| ---- |C02| ---- |C03|
    //       |___|      |___|      |___|      |___|
    //         |          |          |          |
    //        ___        ___        ___        ___
    //       |   |      |   |      |   |      |   |
    //  A1_->|C10| ---- |C11| ---- |C12| ---- |C13|
    //       |___|      |___|      |___|      |___|
    //         |          |          |          |
    //        ___        ___        ___        ___
    //       |   |      |   |      |   |      |   |
    //  A2_->|C20| ---- |C21| ---- |C21| ---- |C21|
    //       |___|      |___|      |___|      |___|
    //         |          |          |          |
    //        ___        ___        ___        ___
    //       |   |      |   |      |   |      |   |
    //  A3_->|C30| ---- |C31| ---- |C32| ---- |C33|
    //       |___|      |___|      |___|      |___|

    systolic1: for(int k = 0; k < a_col; k++) {
    #pragma HLS LOOP_TRIPCOUNT min=c_dim max=c_dim
    #pragma HLS PIPELINE
        systolic2: for(int i = 0; i < MAX_SIZE; i++) {
            systolic3: for(int j = 0; j < MAX_SIZE; j++) {

                // Get previous sum
                int last = (k==0) ? 0 : localC[i][j];

                // Update current sum
                // Handle boundary conditions
                int a_val = (i < a_row && k < a_col)? localA[i][k] : 0;
                int b_val = (k < b_row && j < b_col)? localB[k][j] : 0;
                int result = last + a_val*b_val;

                // Write back results
                localC[i][j] = result;
            }
        }
    }

    // Burst write from output matrices to DDR memory
    // Burst write from matrix C
    writeC: for(int loc = 0, i = 0, j = 0; loc < c_row*c_col; loc++, j++) {
    #pragma HLS LOOP_TRIPCOUNT min=c_dim*c_dim max=c_dim*c_dim
    #pragma HLS PIPELINE
        if(j == c_col) { i++; j = 0; }
        c[loc] = localC[i][j];
    }
}
