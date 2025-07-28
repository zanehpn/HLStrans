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

void workload(float result[GRID_ROWS * GRID_COLS], float grad_x[GRID_ROWS * GRID_COLS], float grad_y[GRID_ROWS * GRID_COLS])
{

    #pragma HLS INTERFACE m_axi port=result offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=grad_x offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=grad_y offset=slave bundle=gmem
    
    #pragma HLS INTERFACE s_axilite port=result bundle=control
    #pragma HLS INTERFACE s_axilite port=grad_x bundle=control
    #pragma HLS INTERFACE s_axilite port=grad_y bundle=control
    
    #pragma HLS INTERFACE s_axilite port=return bundle=control

L1:    float sin_angle[16] = {0, 0.382683432365090, 0.707106781186548, 0.923879532511287, 1, 0.923879532511287, 0.707106781186548, 0.382683432365090, 1.22464679914735e-16, -0.382683432365090, -0.707106781186548, -0.923879532511287, -1, -0.923879532511287, -0.707106781186548, -0.382683432365090};

L2:    float cos_angle[16] = {1, 0.923879532511287, 0.707106781186548, 0.382683432365090, 6.12323399573677e-17, -0.382683432365090, -0.707106781186548, -0.923879532511287, -1, -0.923879532511287, -0.707106781186548, -0.382683432365090, -1.83697019872103e-16, 0.382683432365090, 0.707106781186547, 0.923879532511287};

L3:    int tX[2][16] = {{1, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0}, {2, 1, 1, 0, 0, -1, -2, -2, -2, -2, -2, -1, 0, 0, 1, 1}};

L4:    int tY[2][16] = {{0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1}, {0, 0, 1, 1, 1, 1, 1, 0, 0, -1, -2, -2, -2, -2, -2, -1}};

    int i, n, k;

	// Allocate memory for the result matrix
	// int GRID_ROWS = GRID_ROWS, GRID_COLS = GRID_COLS;
	float *gicov = (float*)malloc(GRID_ROWS * GRID_COLS * sizeof(float));


	// Scan from left to right, top to bottom, computing GICOV values
L5:	for (i = MAX_RADIUS; i < GRID_COLS - MAX_RADIUS; i++) {
L6:		float Grad[NPOINTS];
		int j, k, n, x, y;

L7:		for (j = MAX_RADIUS; j < GRID_ROWS - MAX_RADIUS; j++) {
			// Initialize the maximal GICOV score to 0
			float max_GICOV = 0;

			// Iterate across each stencil
L8:			for (k = 0; k < NCIRCLES; k++) {
				// Iterate across each sample point in the current stencil
L9:				for (n = 0; n < NPOINTS; n++) {
					// Determine the x- and y-coordinates of the current sample point
					y = j + tY[k][n];
					x = i + tX[k][n];

					// Compute the combined gradient value at the current sample point
					Grad[n] = grad_x[y * GRID_COLS + x] * cos_angle[n] + grad_y[y * GRID_COLS + x] * sin_angle[n];
				}

				// Compute the mean gradient value across all sample points
				float sum = 0.0;
L10:				for (n = 0; n < NPOINTS; n++) sum += Grad[n];
				float mean = sum / (float)NPOINTS;

				// Compute the variance of the gradient values
				float var = 0.0;
L11:				for (n = 0; n < NPOINTS; n++) {
					sum = Grad[n] - mean;
					var += sum * sum;
				}
				var = var / (float)(NPOINTS - 1);

				// Keep track of the maximal GICOV value seen so far
				if (mean * mean / var > max_GICOV) {
					result[j * GRID_COLS + i] = mean / sqrt(var);
					max_GICOV = mean * mean / var;
				}
			}
		}
	}
    
	return;
}

}

