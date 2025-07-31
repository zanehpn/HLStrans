void fdtd_2d(int tmax, int nx, int ny, double ex[60][80], double ey[60][80], double hz[60][80], double _fict_[40]) {
#pragma HLS ARRAY_PARTITION variable=ex dim=2 cyclic factor=16
#pragma HLS ARRAY_PARTITION variable=ey dim=2 cyclic factor=16
#pragma HLS ARRAY_PARTITION variable=hz dim=2 cyclic factor=16

  for (int t = 0; t < 40; t++) {
    // Stage 1: Update ey boundary
    for (int j = 0; j < 80; j++) {
#pragma HLS PIPELINE II=1
      ey[0][j] = _fict_[t];
    }

    // Stage 2: Update ey inner cells
    for (int i = 1; i < 60; i++) {
#pragma HLS PIPELINE II=1
      for (int j = 0; j < 80; j++) {
#pragma HLS UNROLL factor=16
        ey[i][j] -= 0.5 * (hz[i][j] - hz[i-1][j]);
      }
    }

    // Stage 3: Update ex
    for (int i = 0; i < 60; i++) {
#pragma HLS PIPELINE II=1
      for (int j = 1; j < 80; j++) {
#pragma HLS UNROLL factor=16
        ex[i][j] -= 0.5 * (hz[i][j] - hz[i][j-1]);
      }
    }

    // Stage 4: Update hz
    for (int i = 0; i < 59; i++) {
#pragma HLS PIPELINE II=1
      for (int j = 0; j < 79; j++) {
#pragma HLS UNROLL factor=16
        hz[i][j] -= 0.7 * (ex[i][j+1] - ex[i][j] + ey[i+1][j] - ey[i][j]);
      }
    }
  }
}