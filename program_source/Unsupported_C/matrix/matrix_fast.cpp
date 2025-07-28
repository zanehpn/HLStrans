#include <ap_int.h>

#define MAX_ROWS  32
#define MAX_COLS  32

// Static 2D array replaces pointer-of-pointer
static int mat_hls[MAX_ROWS][MAX_COLS];

void matrix(int rows, int cols, int value) {
    // Bounded loops; HLS supports fixed-size arrays
    init_row: for (int i = 0; i < rows; i++) {
    #pragma HLS PIPELINE II=1
        init_col: for (int j = 0; j < cols; j++) {
    #pragma HLS UNROLL factor=4
            mat_hls[i][j] = value;
        }
    }
}
