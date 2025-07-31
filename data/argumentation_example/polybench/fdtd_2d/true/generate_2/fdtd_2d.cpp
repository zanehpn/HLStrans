#include "fdtd_2d.h"

void fdtd_2d(int tmax, int nx, int ny, double ex[60][80], double ey[60][80], double hz[60][80], double _fict_[40]) {
#pragma HLS INTERFACE m_axi port=ex offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=ey offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=hz offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=_fict_ offset=slave bundle=gmem
#pragma HLS INTERFACE s_axilite port=tmax
#pragma HLS INTERFACE s_axilite port=nx
#pragma HLS INTERFACE s_axilite port=ny
#pragma HLS INTERFACE s_axilite port=ex
#pragma HLS INTERFACE s_axilite port=ey
#pragma HLS INTERFACE s_axilite port=hz
#pragma HLS INTERFACE s_axilite port=_fict_
#pragma HLS INTERFACE s_axilite port=return

#pragma HLS ARRAY_PARTITION variable=ex cyclic factor=TILE_J dim=2
#pragma HLS ARRAY_PARTITION variable=ey cyclic factor=TILE_J dim=2
#pragma HLS ARRAY_PARTITION variable=hz cyclic factor=TILE_J dim=2

  for (int t = 0; t < 40; t++) {
#pragma HLS LOOP_TRIPCOUNT min=40 max=40

    // Update Ey boundary
    for (int tj = 0; tj < 80; tj += TILE_J) {
#pragma HLS LOOP_FLATTEN
#pragma HLS PIPELINE II=1
      for (int jj = 0; jj < TILE_J; jj++) {
        int j = tj + jj;
        if (j < 80) ey[0][j] = _fict_[t];
      }
    }

    // Update Ey field
    for (int i = 1; i < 60; i++) {
      for (int tj = 0; tj < 80; tj += TILE_J) {
#pragma HLS LOOP_FLATTEN
#pragma HLS PIPELINE II=1
        for (int jj = 0; jj < TILE_J; jj++) {
          int j = tj + jj;
          if (j < 80) ey[i][j] -= 0.5 * (hz[i][j] - hz[i-1][j]);
        }
      }
    }

    // Update Ex field
    for (int i = 0; i < 60; i++) {
      for (int tj = 0; tj < 80; tj += TILE_J) {
#pragma HLS LOOP_FLATTEN
#pragma HLS PIPELINE II=1
        for (int jj = 0; jj < TILE_J; jj++) {
          int j = tj + jj;
          if (j >= 1 && j < 80) ex[i][j] -= 0.5 * (hz[i][j] - hz[i][j-1]);
        }
      }
    }

    // Update Hz field
    for (int i = 0; i < 59; i++) {
      for (int tj = 0; tj < 79; tj += TILE_J) {
#pragma HLS LOOP_FLATTEN
#pragma HLS PIPELINE II=1
        for (int jj = 0; jj < TILE_J; jj++) {
          int j = tj + jj;
          if (j < 79) hz[i][j] -= 0.7 * (ex[i][j+1] - ex[i][j] + ey[i+1][j] - ey[i][j]);
        }
      }
    }
  }
}