#include <stdio.h>
#include <stdlib.h>
#include <string.h>

//-----------------------------------------------
//Original
// #define TILE_ROWS 1024
// #define ROWS 1024
// #define COLS 1024
//-----------------------------------------------
//Alec-added
#define TILE_ROWS 256
#define ROWS 256
#define COLS 256
//-----------------------------------------------
#define R1 0
#define R2 127
#define C1 0
#define C2 127
#define LAMBDA 0.5 
#define PARA_FACTOR 16
#define NITER 2
#define TYPE float
#define TOP_TILE 0
#define BOTTOM_TILE (ROWS/TILE_ROWS - 1)

float srad_core1 (float dN, float dS, float dW, float dE,
		  float Jc, float q0sqr) {
  #pragma HLS inline
  float G2, L, num, den, qsqr, c;
  
  G2 = (dN*dN + dS*dS + dW*dW + dE*dE) / (Jc*Jc);

  L = (dN + dS + dW + dE) / Jc;

  num  = (0.5*G2) - ((1.0/16.0)*(L*L)) ;
  den  = 1 + (.25*L);
  qsqr = num/(den*den);
 
  // diffusion coefficent (equ 33)
  den = (qsqr-q0sqr) / (q0sqr * (1+q0sqr)) ;
  c = 1.0 / (1.0+den) ;
  //printf("core1: d = %.16f, %.16f, %.16f, %.16f; Jc = %.16f, q0sqr = %.16f, den = %.16f, c = %.16f\n", dN, dS, dW, dE, Jc, q0sqr, den, c);
  return c;
}

float srad_core2 (float dN, float dS, float dW, float dE,
		  float cN, float cS, float cW, float cE,
		  float J) {
  #pragma HLS inline
  float D, Jout;
  // divergence (equ 58)
  D = cN * dN + cS * dS + cW * dW + cE * dE;
  //printf("core2: c = %.16f, %.16f, %.16f, %.16f; d = %.16f, %.16f, %.16f, %.16f\n", cN, cS, cW, cE, dN, dS, dW, dE);
  //printf("core2: D = %.16f\n", D);              
  // image update (equ 61)
  Jout = J + 0.25*LAMBDA*D;
  return Jout;
}

void srad_kernel2(float J[(TILE_ROWS+3)*COLS], float Jout[TILE_ROWS*COLS], float q0sqr, int tile){
  int i, ii, j, k, iN, iS, jW, jE;

  float cN, cS, cW, cE, D;

L1: float J_top[PARA_FACTOR];
L2: float J_left[PARA_FACTOR];
L3: float J_right[PARA_FACTOR];
L4: float J_bottom[PARA_FACTOR];
L5: float J_center[PARA_FACTOR];
L6: float c_tmp[PARA_FACTOR];

L7:  float J_rf[PARA_FACTOR][COLS * 2 / PARA_FACTOR + 1];

L8:  float dN[(TILE_ROWS+1)*COLS];
  
L9:  float dS[(TILE_ROWS+1)*COLS];
  
L10:  float dW[(TILE_ROWS+1)*COLS];
  
L11:  float dE[(TILE_ROWS+1)*COLS];
  
L12:  float c[(TILE_ROWS+1)*COLS];
  
L13:  MAIN_KERNEL1: for (i = -2*COLS/PARA_FACTOR-1; i < COLS / PARA_FACTOR * (TILE_ROWS+1); i++) {
L14:    for (k = 0; k < PARA_FACTOR; k++) {
      //read from line buffer, handle borders as well
      J_center[k]  = J_rf[k][COLS / PARA_FACTOR];      
      J_top[k]     = (tile == TOP_TILE && i < COLS / PARA_FACTOR) ? J_center[k] : J_rf[k][0];
      J_left[k]    = ((i % (COLS / PARA_FACTOR)) == 0 && k == 0) ? J_center[k] : J_rf[(k - 1 + PARA_FACTOR) % PARA_FACTOR][COLS / PARA_FACTOR - (k == 0) ];
      J_right[k]   = ((i % (COLS / PARA_FACTOR)) == (COLS / PARA_FACTOR - 1) && k == PARA_FACTOR - 1) ? J_center[k] : J_rf[(k + 1 + PARA_FACTOR) % PARA_FACTOR][COLS / PARA_FACTOR + (k == (PARA_FACTOR - 1)) ];
      J_bottom[k]  = (tile == BOTTOM_TILE && i >= COLS / PARA_FACTOR * (TILE_ROWS - 1)) ? J_center[k] : J_rf[k][COLS / PARA_FACTOR * 2];

      if (i >= 0) {
	// directional derivates
	// note that in srad, we have two stencil cores
	// and we have to store the intermediate data
      	dN[i*PARA_FACTOR+k] = J_top[k] - J_center[k];
      	dS[i*PARA_FACTOR+k] = J_bottom[k] - J_center[k];
      	dW[i*PARA_FACTOR+k] = J_left[k] - J_center[k];
      	dE[i*PARA_FACTOR+k] = J_right[k] - J_center[k];

	// call the stencil core
      	c_tmp[k] = srad_core1(dN[i*PARA_FACTOR+k],
      			      dS[i*PARA_FACTOR+k],
      			      dW[i*PARA_FACTOR+k],
      			      dE[i*PARA_FACTOR+k],
      			      J_center[k], q0sqr);
                
        // saturate diffusion coefficent
        if (c_tmp[k] < 0) {
          c[i*PARA_FACTOR+k] = 0;}
        else if (c_tmp[k] > 1) {
          c[i*PARA_FACTOR+k] = 1;}
        else {
          c[i*PARA_FACTOR+k] = c_tmp[k];}
        //printf("index = %d, c_tmp = %.16f, c = %.16f\n", i*PARA_FACTOR+k, c_tmp[k], c[i*PARA_FACTOR+k]);
            }
    }

    //shift the line buffer one by one
L15:    for (k = 0; k < PARA_FACTOR; k++) {
L16:      for (j = 0; j < COLS * 2 / PARA_FACTOR; j++) {
        J_rf[k][j] = J_rf[k][j + 1];
      }
      J_rf[k][COLS * 2 / PARA_FACTOR] = J[2*COLS + (i + 1) * PARA_FACTOR + k];
    }
  }//*/

L17: float c_right[PARA_FACTOR];
L18: float c_bottom[PARA_FACTOR]; 
L19: float c_center[PARA_FACTOR];

L20:  float c_rf[PARA_FACTOR][COLS / PARA_FACTOR + 1];
  
L21:  MAIN_KERNEL2: for (i = -COLS/PARA_FACTOR-1; i < COLS / PARA_FACTOR * TILE_ROWS; i++) {
L22:    for (k = 0; k < PARA_FACTOR; k++) {
      //read from line buffer, handle borders as well
      c_center[k]  = c_rf[k][0];

      c_right[k]   = ((i % (COLS / PARA_FACTOR)) == (COLS / PARA_FACTOR - 1) && k == PARA_FACTOR - 1) ? c_center[k] : c_rf[(k + 1 + PARA_FACTOR) % PARA_FACTOR][ (k == (PARA_FACTOR - 1)) ];

      c_bottom[k]  = (tile == BOTTOM_TILE && i >= COLS / PARA_FACTOR * (TILE_ROWS - 1)) ? c_center[k] : c_rf[k][COLS / PARA_FACTOR];

      if (i >= 0) {
      	Jout[i*PARA_FACTOR+k] = srad_core2(dN[i*PARA_FACTOR+k], dS[i*PARA_FACTOR+k],
      					   dW[i*PARA_FACTOR+k], dE[i*PARA_FACTOR+k],
      					   c_center[k], c_bottom[k], c_center[k], c_right[k],
      					   J[COLS+i*PARA_FACTOR+k]);
      }
    }

    //shift the line buffer one by one
L23:    for (k = 0; k < PARA_FACTOR; k++) {
L24:      for (j = 0; j < COLS / PARA_FACTOR; j++) {
        c_rf[k][j] = c_rf[k][j + 1];
      }
      c_rf[k][COLS / PARA_FACTOR] = c[COLS + (i + 1) * PARA_FACTOR + k];
    }
  }
}

extern "C" {
  
void buffer_load(int flag, float J_buf[(TILE_ROWS+3)*COLS], float J[(ROWS+3)*COLS], int tile){
  #pragma HLS inline off
  if (flag) memcpy(J_buf, J+tile*TILE_ROWS*COLS, (TILE_ROWS+3)*COLS*sizeof(float));
  return;
}

void buffer_compute(int flag, float J_buf[(TILE_ROWS+3)*COLS], float Jout_buf[TILE_ROWS*COLS], float v0sqr, int tile){
  #pragma HLS inline off
  if (flag) srad_kernel2(J_buf, Jout_buf, v0sqr, tile);
  return;
}

void buffer_store(int flag, float Jout[(ROWS+3)*COLS], float Jout_buf[TILE_ROWS*COLS], int tile){
  #pragma HLS inline off
  if (flag) memcpy(Jout+(tile*TILE_ROWS+1)*COLS, Jout_buf, TILE_ROWS*COLS*sizeof(float));
  return;
}

void srad(float J[(ROWS+3)*COLS], float Jout[(ROWS+3)*COLS]) {
  
#pragma HLS INTERFACE m_axi port=J offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=Jout offset=slave bundle=gmem
#pragma HLS INTERFACE s_axilite port=J bundle=control
#pragma HLS INTERFACE s_axilite port=Jout bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control

L25:    float J_buf_0[(TILE_ROWS+3)*COLS];
    //assume C2-C1 > PARA_FACTOR and (C2-C1)%PARA_FACTOR == 0
L26:    float Jout_buf_0[TILE_ROWS*COLS];

L27:    float J_buf_1[(TILE_ROWS+3)*COLS];
L28:    float Jout_buf_1[TILE_ROWS*COLS];
  
L29:    float J_buf_2[(TILE_ROWS+3)*COLS];
L30:    float Jout_buf_2[TILE_ROWS*COLS];
  
    int iter, t=0;
    float v0sqr = 0.0870038941502571;
    //assume NITER%2 == 0
L31:  ITER_LOOP: for (iter=0; iter<NITER/2; iter++){
      //srad_kernel1(J, &v0sqr);
      //printf("*********v0sqr = %.16f\n", v0sqr);
      //assume ROWS%TILE_ROWS == 0
L32:    TILE_LOOP1: for (t = 0; t < ROWS/TILE_ROWS + 2; t++) {
    	int load_flag = t >= 0 && t < ROWS / TILE_ROWS;
    	int compute_flag = t >= 1 && t < ROWS / TILE_ROWS + 1;
    	int store_flag = t >= 2 && t < ROWS / TILE_ROWS + 2;

    	if (t % 3 == 0) {
    	  buffer_load(load_flag, J_buf_0, J, t);
    	  //printf("*********v0sqr = %.16f\n", v0sqr);
    	  buffer_compute(compute_flag, J_buf_2, Jout_buf_2, v0sqr, t-1);
    	  buffer_store(store_flag, Jout, Jout_buf_1, t-2);
    	} else if (t % 3 == 1) {
    	  buffer_load(load_flag, J_buf_1, J, t);
    	  buffer_compute(compute_flag, J_buf_0, Jout_buf_0, v0sqr, t-1);
    	  buffer_store(store_flag, Jout, Jout_buf_2, t-2);
    	} else if (t % 3 == 2) {
    	  buffer_load(load_flag, J_buf_2, J, t);
    	  buffer_compute(compute_flag, J_buf_1, Jout_buf_1, v0sqr, t-1);
    	  buffer_store(store_flag, Jout, Jout_buf_0, t-2);
    	}
    }

      //srad_kernel1(Jout, &v0sqr);
L33:    TILE_LOOP2: for (t = 0; t < ROWS/TILE_ROWS + 2; t++) {
    	int load_flag = t >= 0 && t < ROWS / TILE_ROWS;
    	int compute_flag = t >= 1 && t < ROWS / TILE_ROWS + 1;
    	int store_flag = t >= 2 && t < ROWS / TILE_ROWS + 2;

    	if (t % 3 == 0) {
    	  buffer_load(load_flag, J_buf_0, Jout, t);
    	  buffer_compute(compute_flag, J_buf_2, Jout_buf_2, v0sqr, t-1);
    	  buffer_store(store_flag, J, Jout_buf_1, t-2);
    	} else if (t % 3 == 1) {
    	  buffer_load(load_flag, J_buf_1, Jout, t);
    	  buffer_compute(compute_flag, J_buf_0, Jout_buf_0, v0sqr, t-1);
    	  buffer_store(store_flag, J, Jout_buf_2, t-2);
    	} else if (t % 3 == 2) {
    	  buffer_load(load_flag, J_buf_2, Jout, t);
    	  buffer_compute(compute_flag, J_buf_1, Jout_buf_1, v0sqr, t-1);
    	  buffer_store(store_flag, J, Jout_buf_0, t-2);
    	}
    }

  }
    return;
} 
}

