void doitgen(int nr, int nq, int np, double A[25][20][30], double C4[30][30], double sum[30]) {
  int r, q, p, s;

  #pragma HLS ARRAY_PARTITION variable=sum complete dim=1

  for (r = 0; r < 25; r++) {
    for (q = 0; q < 20; q++) {
      #pragma HLS PIPELINE
      for (p = 0; p < 30; p++) {
        #pragma HLS UNROLL
        sum[p] = 0.0;
        for (s = 0; s < 30; s++) {
          #pragma HLS UNROLL
          sum[p] += A[r][q][s] * C4[s][p];
        }
      }
      for (p = 0; p < 30; p++) {
        #pragma HLS UNROLL
        A[r][q][p] = sum[p];
      }
    }
  }
}