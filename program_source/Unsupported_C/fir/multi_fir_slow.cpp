void multi_fir(float **data, int C, int L, float *coef, float **out) {
    int N = 1024; // Assuming N is defined somewhere
    for (int c = 0; c < C; ++c)
      for (int i = 0; i < N; ++i) {
        float acc = 0;
        for (int j = 0; j < L; ++j)
          acc += data[c][i+j] * coef[j];
        out[c][i] = acc;
      }
}