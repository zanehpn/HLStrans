#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define MEMORY_REORG 0
#define PADDED 1
#define TYPE float
#define UNROLL_SIZE 20
#define FULL_NEIGHBOR_COUNT 27
#define NUMBER_PAR_PER_BOX 100
#define DIMENSION_1D 2   //User defined
#define DIMENSION_2D (DIMENSION_1D * DIMENSION_1D)
#define DIMENSION_3D (DIMENSION_1D * DIMENSION_1D * DIMENSION_1D)
#define DIMENSION_1D_PADDED (1+DIMENSION_1D+1) 
#define DIMENSION_2D_PADDED (DIMENSION_1D_PADDED * DIMENSION_1D_PADDED)
#define DIMENSION_3D_PADDED (DIMENSION_1D_PADDED * DIMENSION_1D_PADDED * DIMENSION_1D_PADDED)
#define ALPHA 0.5
#define A2 (ALPHA * ALPHA * 2.0)
#define N (DIMENSION_3D * NUMBER_PAR_PER_BOX)
#define N_PADDED (DIMENSION_3D_PADDED * NUMBER_PAR_PER_BOX)
#define POS_DIM 4
#define V 0
#define X 1
#define Y 2
#define Z 3
#define POS_DATA_SIZE_FLATTEN (N * POS_DIM)
#define POS_DATA_SIZE_FLATTEN_PADDED (N_PADDED * POS_DIM)
#define DOT(A, B) ((A.x) * (B.x) + (A.y) * (B.y) + (A.z) * (B.z))
typedef struct { TYPE v, x, y, z; } FOUR_VECTOR;
void lavaMD_tiling_padded(TYPE pos_i[N_PADDED*POS_DIM], TYPE q_i[N_PADDED], TYPE pos_o[N*POS_DIM])
{
    //local variables
    int i, j, k;
    int ii, jj, kk;
    int x, y, z;
    int l, m, n;
    int x_n, y_n, z_n;
    int A_idx, B_idx, C_idx;
    int remainder;
    TYPE r2, u2, fs, vij, fxij, fyij, fzij;
L1:    TYPE d[POS_DIM];

L2:    int neighborOffset[FULL_NEIGHBOR_COUNT][3] = {{-1,-1,-1}, { 0,-1,-1}, { 1,-1,-1}, {-1, 0,-1}, { 0, 0,-1}, { 1, 0,-1}, {-1, 1,-1}, { 0, 1,-1}, { 1, 1,-1}, {-1,-1, 0}, { 0,-1, 0}, { 1,-1, 0}, {-1, 0, 0}, { 0, 0, 0}, { 1, 0, 0}, {-1, 1, 0}, { 0, 1, 0}, { 1, 1, 0}, {-1,-1, 1}, { 0,-1, 1}, { 1,-1, 1}, {-1, 0, 1}, { 0, 0, 1}, { 1, 0, 1}, {-1, 1, 1}, { 0, 1, 1}, { 1, 1, 1}};
    //local BRAM - tiling essentials
L3:    TYPE local_A_pos_i[NUMBER_PAR_PER_BOX][POS_DIM];
L4:    TYPE local_B_pos_i[NUMBER_PAR_PER_BOX][POS_DIM];
L5:    TYPE local_B_q_i[NUMBER_PAR_PER_BOX];
L6:    TYPE local_pos_o[NUMBER_PAR_PER_BOX][POS_DIM];

    //iterate through all boxes in the 3D space
L7:    BOXES: for(i=0; i<DIMENSION_3D; i++){
        //purge local_pos_o
L8:        WIPE_LOCAL_POS_O: for (ii=0; ii<NUMBER_PAR_PER_BOX; ++ii){
            local_pos_o[ii][V] = 0.0;
            local_pos_o[ii][X] = 0.0;
            local_pos_o[ii][Y] = 0.0;
            local_pos_o[ii][Z] = 0.0;
        }
        //index of the output array
        C_idx = i * NUMBER_PAR_PER_BOX;
        //convert from 1D-index to 3D-index
        z = i / DIMENSION_2D;
        remainder = i % DIMENSION_2D;
        y = remainder / DIMENSION_1D;
        x = remainder % DIMENSION_1D;
        //pos of the input_A array
        x_n = x + 1;
        y_n = y + 1;
        z_n = z + 1;
        //convert from 3D-index to 1D-index
        A_idx = z_n*DIMENSION_2D_PADDED + y_n*DIMENSION_1D_PADDED + x_n;
        A_idx = A_idx * NUMBER_PAR_PER_BOX;
        //load local_A_pos_i
L9:        LOAD_LOCAL_A_POS_I: for (ii=0; ii<NUMBER_PAR_PER_BOX; ++ii){
            local_A_pos_i[ii][V] = pos_i[(A_idx+ii)*POS_DIM+V];
            local_A_pos_i[ii][X] = pos_i[(A_idx+ii)*POS_DIM+X];
            local_A_pos_i[ii][Y] = pos_i[(A_idx+ii)*POS_DIM+Y];
            local_A_pos_i[ii][Z] = pos_i[(A_idx+ii)*POS_DIM+Z];
        }
        //go through 27 neighbors
L10:        for (l=0; l<FULL_NEIGHBOR_COUNT; ++l){
            //pos of the neighbor - input_B array
            x = x_n + neighborOffset[l][0];
            y = y_n + neighborOffset[l][1];
            z = z_n + neighborOffset[l][2];
            //convert from 3D-index to 1D-index
            B_idx = z*DIMENSION_2D_PADDED + y*DIMENSION_1D_PADDED + x;
            B_idx = B_idx * NUMBER_PAR_PER_BOX;
            //load local_B_pos_i
L11:            LOAD_LOCAL_B_POS_I: for (ii=0; ii<NUMBER_PAR_PER_BOX; ++ii){
                local_B_pos_i[ii][V] = pos_i[(B_idx+ii)*POS_DIM+V];
                local_B_pos_i[ii][X] = pos_i[(B_idx+ii)*POS_DIM+X];
                local_B_pos_i[ii][Y] = pos_i[(B_idx+ii)*POS_DIM+Y];
                local_B_pos_i[ii][Z] = pos_i[(B_idx+ii)*POS_DIM+Z];
            }
            //load local_B_q_i
L12:            LOAD_LOCAL_B_Q_I: for (ii=0; ii<NUMBER_PAR_PER_BOX; ++ii){
                local_B_q_i[ii] = q_i[B_idx+ii];
            }

            //calculate the accumulated effects from all neighboring particles
L13:            PARTICLES_A: for(j=0; j<NUMBER_PAR_PER_BOX; ++j){
L14:                PARTICLES_B: for(k=0; k<NUMBER_PAR_PER_BOX; ++k){
                    // coefficients
                    r2 = local_A_pos_i[j][V] + local_B_pos_i[k][V] -
                        (local_A_pos_i[j][X] * local_B_pos_i[k][X] +
                         local_A_pos_i[j][Y] * local_B_pos_i[k][Y] +
                         local_A_pos_i[j][Z] * local_B_pos_i[k][Z]); 
                    u2 = A2 * r2;
                    //Below line equivalent as -> vij = exp(-u2);
                    u2 = u2 * -1.0;
                    vij = 1.0 + (u2) + 0.5*((u2)*(u2)) +
                            0.16666*((u2)*(u2)*(u2)) +
                            0.041666*((u2)*(u2)*(u2)*(u2));
                    fs = 2. * vij;
                    d[X] = local_A_pos_i[j][X] - local_B_pos_i[k][X];
                    d[Y] = local_A_pos_i[j][Y] - local_B_pos_i[k][Y];
                    d[Z] = local_A_pos_i[j][Z] - local_B_pos_i[k][Z];
                    fxij = fs * d[X];
                    fyij = fs * d[Y];
                    fzij = fs * d[Z];
                    // forces
                    local_pos_o[j][V] += local_B_q_i[k] * vij;
                    local_pos_o[j][X] += local_B_q_i[k] * fxij;
                    local_pos_o[j][Y] += local_B_q_i[k] * fyij;
                    local_pos_o[j][Z] += local_B_q_i[k] * fzij;                    
                }
            }
        }
        //writeback local_pos_o
L15:        WRITE_POS_O: for (ii=0; ii<NUMBER_PAR_PER_BOX; ++ii){
            pos_o[(C_idx+ii)*POS_DIM+V] = local_pos_o[ii][V];
            pos_o[(C_idx+ii)*POS_DIM+X] = local_pos_o[ii][X];
            pos_o[(C_idx+ii)*POS_DIM+Y] = local_pos_o[ii][Y];
            pos_o[(C_idx+ii)*POS_DIM+Z] = local_pos_o[ii][Z];
        }
    }
}

extern "C"
{
    void lavaMD(TYPE pos_i[N_PADDED*POS_DIM], TYPE q_i[N_PADDED], TYPE pos_o[N*POS_DIM])
    {
        #pragma HLS INTERFACE m_axi port=pos_i  offset=slave bundle=gmem
        #pragma HLS INTERFACE m_axi port=q_i    offset=slave bundle=gmem
        #pragma HLS INTERFACE m_axi port=pos_o  offset=slave bundle=gmem

        #pragma HLS INTERFACE s_axilite port=pos_i  bundle=control
        #pragma HLS INTERFACE s_axilite port=q_i    bundle=control
        #pragma HLS INTERFACE s_axilite port=pos_o  bundle=control

        #pragma HLS INTERFACE s_axilite port=return bundle=control

        lavaMD_tiling_padded(pos_i, q_i, pos_o);

        return;
    }
}
