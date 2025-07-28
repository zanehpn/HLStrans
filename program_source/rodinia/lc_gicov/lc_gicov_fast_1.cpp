#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#define GRID_ROWS 256
#define GRID_COLS 256
#define TILE_ROWS 64
#define PARA_FACTOR 4
// The number of sample points per ellipse
#define NPOINTS 16
// The expected radius (in pixels) of a cell
#define MIN_RADIUS 2
// The number of different sample ellipses to try
#define NCIRCLES 2
// Stride
#define STRIDE 1
#define MAX_RADIUS (MIN_RADIUS + STRIDE * (NCIRCLES - 1))
#define PI 3.1415926
#define TOP 0
#define BOTTOM (GRID_ROWS / TILE_ROWS - 1)
#define TYPE float

extern "C" {

void lc_gicov_kernel(float result[TILE_ROWS * GRID_COLS], float grad_x[(TILE_ROWS + 2 * MAX_RADIUS) * GRID_COLS], float grad_y[(TILE_ROWS + 2 * MAX_RADIUS) * GRID_COLS], int tX[NCIRCLES][NPOINTS], int tY[NCIRCLES][NPOINTS], float sin_angle[NPOINTS], float cos_angle[NPOINTS], int which_boundary) 
{
    // Scan from left to right, top to bottom, computing GICOV values
    int i;
L1:    for (i = 0; i < GRID_COLS; i++) {
        int j;

L2:        for (j = MAX_RADIUS; j < TILE_ROWS + 2 * MAX_RADIUS - MAX_RADIUS; j++) {
            if (i < MAX_RADIUS || i >= GRID_COLS - MAX_RADIUS || (which_boundary == TOP && j < MAX_RADIUS + MAX_RADIUS) || (which_boundary == BOTTOM && j >= TILE_ROWS + 2 * MAX_RADIUS - MAX_RADIUS - MAX_RADIUS)) {
                result[j * GRID_COLS + i - MAX_RADIUS * GRID_COLS] = 0;
                continue;
            }
            // Initialize the maximal GICOV score to 0
            int k, n;
L3:            float Grad[NPOINTS];
            float max_GICOV = 0;

            // Iterate across each stencil
L4:            for (k = 0; k < NCIRCLES; k++) {
                // Iterate across each sample point in the current stencil
L5:                for (n = 0; n < NPOINTS; n++) {
                    int x, y;
                    // Determine the x- and y-coordinates of the current sample point
                    y = j + tY[k][n];
                    x = i + tX[k][n];

                    // Compute the combined gradient value at the current sample point
                    Grad[n] = grad_x[y * GRID_COLS + x] * cos_angle[n] + grad_y[y * GRID_COLS + x] * sin_angle[n];
                }

                // Compute the mean gradient value across all sample points
                float sum = 0.0;
L6:                for (n = 0; n < NPOINTS; n++) sum += Grad[n];
                float mean = sum / (float)NPOINTS;

                // Compute the variance of the gradient values
                float var = 0.0;
L7:                for (n = 0; n < NPOINTS; n++) {
                    sum = Grad[n] - mean;
                    var += sum * sum;
                }
                var = var / (float)(NPOINTS - 1);

                // Keep track of the maximal GICOV value seen so far
                if (mean * mean / var > max_GICOV) {
                    result[j * GRID_COLS + i - MAX_RADIUS * GRID_COLS] = mean / sqrt(var);
                    max_GICOV = mean * mean / var;
                }
            }
        }
    }                                                                                                                 
}
}


extern "C" {

void lc_gicov(float result[GRID_ROWS * GRID_COLS], float grad_x[GRID_ROWS * GRID_COLS], float grad_y[GRID_ROWS * GRID_COLS])
{
    #pragma HLS INTERFACE m_axi port=result offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=grad_x offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=grad_y offset=slave bundle=gmem
    
    #pragma HLS INTERFACE s_axilite port=result bundle=control
    #pragma HLS INTERFACE s_axilite port=grad_x bundle=control
    #pragma HLS INTERFACE s_axilite port=grad_y bundle=control
    
    #pragma HLS INTERFACE s_axilite port=return bundle=control

        int i, n, k;
    // Compute the sine and cosine of the angle to each point in each sample circle
    //  (which are the same across all sample circles)

L8:    float sin_angle[16] = {0, 0.382683432365090, 0.707106781186548, 0.923879532511287, 1, 0.923879532511287, 0.707106781186548, 0.382683432365090, 1.22464679914735e-16, -0.382683432365090, -0.707106781186548, -0.923879532511287, -1, -0.923879532511287, -0.707106781186548, -0.382683432365090};


L9:    float cos_angle[16] = {1, 0.923879532511287, 0.707106781186548, 0.382683432365090, 6.12323399573677e-17, -0.382683432365090, -0.707106781186548, -0.923879532511287, -1, -0.923879532511287, -0.707106781186548, -0.382683432365090, -1.83697019872103e-16, 0.382683432365090, 0.707106781186547, 0.923879532511287};

L10:    int tX[2][16] = {{1, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0}, {2, 1, 1, 0, 0, -1, -2, -2, -2, -2, -2, -1, 0, 0, 1, 1}};

L11:    int tY[2][16] = {{0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1}, {0, 0, 1, 1, 1, 1, 1, 0, 0, -1, -2, -2, -2, -2, -2, -1}};

L12:    float result_inner   [TILE_ROWS * GRID_COLS];
L13:    float grad_x_inner   [(TILE_ROWS + 2 * MAX_RADIUS) * GRID_COLS];
L14:    float grad_y_inner   [(TILE_ROWS + 2 * MAX_RADIUS) * GRID_COLS];

L15:    for (k = 0; k < GRID_ROWS / TILE_ROWS; k++) {
        memcpy(grad_x_inner, grad_x + k * TILE_ROWS * GRID_COLS - MAX_RADIUS * GRID_COLS, sizeof(float) * (TILE_ROWS + 2 * MAX_RADIUS) * GRID_COLS);
        memcpy(grad_y_inner, grad_y + k * TILE_ROWS * GRID_COLS - MAX_RADIUS * GRID_COLS, sizeof(float) * (TILE_ROWS + 2 * MAX_RADIUS) * GRID_COLS);
        
        lc_gicov_kernel(result_inner, grad_x_inner, grad_y_inner, tX, tY, sin_angle, cos_angle, k);
        
        memcpy(result + k * TILE_ROWS * GRID_COLS, result_inner, sizeof(float) * (TILE_ROWS * GRID_COLS));
    }


    return;
}

}


