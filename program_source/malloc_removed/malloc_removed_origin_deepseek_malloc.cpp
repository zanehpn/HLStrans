// MALLOC_VARIANT

#define N 32

typedef int din_t;
typedef long long dout_t;
typedef int dsel_t;

dout_t malloc_removed(din_t din[N], dsel_t width) {
  int* array_local = new int[64];

  for (int i = 0; i < N - 1; ++i) {
    array_local[i] = (i < width) ? din[i] : (din[i] >> 2);
  }

  dout_t out_accum = 0;
  for (int j = 0; j < N - 1; ++j) {
    out_accum += array_local[j];
  }

  delete[] array_local;
  return out_accum;
}
