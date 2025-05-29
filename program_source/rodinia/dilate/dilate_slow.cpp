
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#define GRID_ROWS 544//2048
#define GRID_COLS 512
#define TILE_ROWS 32
#define TILE_COLS 128 // array partition limits the number of bram to be less than 1024
#define STREL_ROWS 5
#define STREL_COLS 5
#define MAX_RADIUS 2
#define PI 3.1415926
#define TOP 0
#define BOTTOM (GRID_ROWS / TILE_ROWS - 1)
#define TYPE float
extern "C" {

void workload(float result[GRID_ROWS * GRID_COLS], float img[(GRID_ROWS+2*MAX_RADIUS)*GRID_COLS])
{

	#pragma HLS INTERFACE m_axi port=result offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=img offset=slave bundle=gmem
	#pragma HLS INTERFACE s_axilite port=result bundle=control
	#pragma HLS INTERFACE s_axilite port=img bundle=control
	#pragma HLS INTERFACE s_axilite port=return bundle=control

	int starting_idx = MAX_RADIUS*GRID_COLS;

L1:	bool strel[25] = { 0, 0, 1, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 1, 0, 0 };

	int radius_p = STREL_ROWS / 2;
	int radius_q = STREL_COLS / 2;

L2:	for (int i = 0; i < GRID_ROWS; i++) {
L3:		for (int j = 0; j < GRID_COLS; j++) {
			float max = 0.0, temp;
L4:			for (int m = 0; m < STREL_ROWS; m++) {
L5:				for (int n = 0; n < STREL_COLS; n++) {
					int p = i - radius_p + m;
					int q = j - radius_q + n;
					if (p >= 0 && q >= 0 && p < GRID_ROWS && q < GRID_COLS && strel[m * STREL_COLS + n] != 0) {
						temp = img[starting_idx + p * GRID_COLS + q];
						if (temp > max) max = temp;
					}
				}
			}
			result[i * GRID_COLS + j] = max;
		}
	}

	return;
}

}