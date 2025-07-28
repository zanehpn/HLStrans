#include <math.h>
#include <string.h>
#define ETA 0.3       //eta value
#define TILE_SIZE 512

extern "C" {
void workload(float l1[65537], float l2[17], float conn[65537 * 17]) {
#pragma HLS INTERFACE m_axi port=l1 offset=slave bundle=l11
#pragma HLS INTERFACE m_axi port=l2 offset=slave bundle=l21
#pragma HLS INTERFACE m_axi port=conn offset=slave bundle=conn1


#pragma HLS INTERFACE s_axilite port=l1 bundle=control
#pragma HLS INTERFACE s_axilite port=l2 bundle=control
#pragma HLS INTERFACE s_axilite port=conn bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control

    float sum;
    int j, k, kk;
L1:    float l1_buf[65537];
L2:    float conn_buf[TILE_SIZE*17];
L3:    float l2_buf[17];

    memcpy(l1_buf, l1, sizeof(float) * 65537);

    /*** Set up thresholding unit ***/
    l1_buf[0] = 1.0;

    /*** For each unit in second layer ***/
L4:    for (j = 1; j < 17; j++) {
        /*** Compute weighted sum of its inputs ***/
        sum = 0.0;

L5:        for (kk = 0; kk < 65536 + TILE_SIZE; kk += TILE_SIZE) {
            int size = (kk == 65536)?1:TILE_SIZE;
            memcpy(conn_buf, conn+kk*17, sizeof(float) * size * 17);
L6:            for (k = 0; k < TILE_SIZE; k++) {
                if (k + kk < 65537) {
                    float product = conn_buf[k * 17 + j] * l1_buf[k + kk];
                    sum += product;
                }
            }
        }
        
        l2_buf[j] = (1.0 / (1.0 + exp(-sum)));
    }
    memcpy(l2, l2_buf, sizeof(float) * 17);
}
}
