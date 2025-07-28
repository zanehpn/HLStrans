#include <math.h>
#include <string.h>
#define ETA 0.3       //eta value
#define TILE_SIZE 8192
#define DUP_SIZE 32
extern "C" {
void workload(float l1[65537], float l2[17], float conn[65537 * 16]) {
#pragma HLS INTERFACE m_axi port=l1 offset=slave bundle=l11
#pragma HLS INTERFACE m_axi port=l2 offset=slave bundle=l21
#pragma HLS INTERFACE m_axi port=conn offset=slave bundle=conn1


#pragma HLS INTERFACE s_axilite port=l1 bundle=control
#pragma HLS INTERFACE s_axilite port=l2 bundle=control
#pragma HLS INTERFACE s_axilite port=conn bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control

L1:    float sum[16];

    int j, k, kk, kkk;

L2:    float l1_buf[65536];

L3:    float conn_buf[TILE_SIZE][16];

L4:    float l2_buf[16];

    memcpy(l1_buf, l1+1, sizeof(float) * 65536);
    memcpy(sum, conn, sizeof(float) * 16);

    /*** For each unit in second layer ***/
L5:    LOOP1: for (kk = 1; kk < 65537; kk += TILE_SIZE) {
        memcpy(conn_buf[0], conn+kk*16, sizeof(float) * TILE_SIZE * 16);
L6:        LOOP2: for (k = 0; k < TILE_SIZE; k++) {
L7:            LOOP3: for (j = 0; j < 16; j++) {
                float product = conn_buf[k][j] * l1_buf[k + kk - 1];
                sum[j] += product;
            }
        }
    }
    
L8:    LOOP4: for (j = 0; j < 16; j++) {
        l2_buf[j] = (1.0 / (1.0 + exp(-sum[j])));
    }
    memcpy(l2+1, l2_buf, sizeof(float) * 16);
}
}
