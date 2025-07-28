#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#define SIM_TIME 64
#define GRID_ROWS 512
#define GRID_COLS 512
#define TILE_ROWS 64
#define PARA_FACTOR 16
#define MAX_PD  (3.0e4)
#define PRECISION 0.001
#define SPEC_HEAT_SI 1.75e6
#define K_SI 100
#define FACTOR_CHIP 0.5
#define OPEN
#define T_CHIP 0.0005
#define CHIP_HEIGHT 0.016
#define CHIP_WIDTH 0.016
#define AMB_TEMP 80.0
#define TOP 0
#define BOTTOM (GRID_ROWS/TILE_ROWS - 1)
#define TYPE float

extern"C" {

void hotspot_kernel(float result[TILE_ROWS * GRID_COLS], float temp[(TILE_ROWS + 2) * GRID_COLS], float power[TILE_ROWS * GRID_COLS], float Cap_1, float Rx_1, float Ry_1, float Rz_1, int which_boundary) {
    float amb_temp = 80.0;
    float delta;

L1:    for (int r = 0; r < TILE_ROWS; r++)
L2:        for (int c = 0; c < GRID_COLS; c++) {
    
            float center = temp[GRID_COLS + r*GRID_COLS + c];
            float top = ((which_boundary == TOP) && r == 0) ? center : temp[GRID_COLS + (r - 1)*GRID_COLS + c];
            float right = (c == GRID_COLS - 1) ? center : temp[GRID_COLS + r*GRID_COLS + c + 1];
            float bottom = ((which_boundary == BOTTOM) && r == TILE_ROWS - 1) ? center : temp[GRID_COLS + (r + 1)*GRID_COLS + c];
            float left = (c == 0) ? center : temp[GRID_COLS + r*GRID_COLS + c - 1];

            delta = (Cap_1 * (power[r*GRID_COLS + c] +
                    (top + bottom - 2.f*center) * Ry_1 +
                    (right + left - 2.f*center) * Rx_1 +
                    (amb_temp - center) * Rz_1));
                    
            result[r*GRID_COLS + c] = temp[GRID_COLS + r*GRID_COLS + c] + delta;
        }

    return;
}


void hotspot(float result[GRID_ROWS * GRID_COLS], float temp[GRID_ROWS * GRID_COLS], float power[GRID_ROWS * GRID_COLS])
{

    #pragma HLS INTERFACE m_axi port=result offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=temp offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=power offset=slave bundle=gmem
    
    #pragma HLS INTERFACE s_axilite port=result bundle=control
    #pragma HLS INTERFACE s_axilite port=temp bundle=control
    #pragma HLS INTERFACE s_axilite port=power bundle=control
    
    #pragma HLS INTERFACE s_axilite port=return bundle=control

    float grid_height = CHIP_HEIGHT / GRID_ROWS;
    float grid_width = CHIP_WIDTH / GRID_COLS;

    float Cap = FACTOR_CHIP * SPEC_HEAT_SI * T_CHIP * grid_width * grid_height;
    float Rx = grid_width / (2.0 * K_SI * T_CHIP * grid_height);
    float Ry = grid_height / (2.0 * K_SI * T_CHIP * grid_width);
    float Rz = T_CHIP / (K_SI * grid_height * grid_width);

    float max_slope = MAX_PD / (FACTOR_CHIP * T_CHIP * SPEC_HEAT_SI);
    float step = PRECISION / max_slope / 1000.0;

    float Rx_1=1.f / Rx;
    float Ry_1=1.f / Ry;
    float Rz_1=1.f / Rz;
    float Cap_1 = step / Cap;

L3:    float result_inner [TILE_ROWS * GRID_COLS];
L4:    float temp_inner   [(TILE_ROWS + 2) * GRID_COLS];
L5:    float power_inner  [TILE_ROWS * GRID_COLS];

    int i;
L6:    for (i = 0; i < SIM_TIME/2; i++) {
        int k;
L7:        for (k = 0; k < GRID_ROWS / TILE_ROWS; k++) {                                                                                    
            memcpy(temp_inner, temp + k * TILE_ROWS * GRID_COLS - GRID_COLS, sizeof(float) * (TILE_ROWS + 2) * GRID_COLS);
            memcpy(power_inner, power + k * TILE_ROWS * GRID_COLS, sizeof(float) * TILE_ROWS * GRID_COLS);
             
            hotspot_kernel(result_inner, temp_inner, power_inner, Cap_1, Rx_1, Ry_1, Rz_1, k);
                          
            memcpy(result + k * TILE_ROWS * GRID_COLS, result_inner, sizeof(float) * TILE_ROWS * GRID_COLS);
        }
 
L8:        for (k = 0; k < GRID_ROWS / TILE_ROWS; k++) {
            memcpy(temp_inner, result + k * TILE_ROWS * GRID_COLS - GRID_COLS, sizeof(float) * (TILE_ROWS + 2) * GRID_COLS);
            memcpy(power_inner, power + k * TILE_ROWS * GRID_COLS, sizeof(float) * TILE_ROWS * GRID_COLS);
 
            hotspot_kernel(result_inner, temp_inner, power_inner, Cap_1, Rx_1, Ry_1, Rz_1, k);
 
            memcpy(temp + k * TILE_ROWS * GRID_COLS, result_inner,  sizeof(float) * TILE_ROWS * GRID_COLS);
        }
    }

    return;
}
}


