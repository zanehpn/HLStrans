// File: fft2d_rec.cpp
#include <complex>
#include <vector>
using cplx = std::complex<float>;

/** Recursive 1D Cooley–Tuk FFT */
void fft1d_rec(std::vector<cplx>& x) {
  int N = x.size();
  if (N <= 1) return;
  std::vector<cplx> even(N/2), odd(N/2);
  for (int i = 0; i < N/2; ++i) {
    even[i] = x[i*2];
    odd[i]  = x[i*2 + 1];
  }
  fft1d_rec(even);  // recursion not supported :contentReference[oaicite:0]{index=0}
  fft1d_rec(odd);
  for (int k = 0; k < N/2; ++k) {
    cplx t = std::polar(1.0f, -2.0f * M_PI * k / N) * odd[k];
    x[k]     = even[k] + t;
    x[k+N/2] = even[k] - t;
  }
}

/** 2D FFT by recursive 1D FFTs */
void fft2d_rec(std::vector<std::vector<cplx>>& A) {
  int N = A.size();
  // FFT rows
  for (auto& row : A) fft1d_rec(row);
  // FFT cols
  for (int j = 0; j < N; ++j) {
    std::vector<cplx> col(N);
    for (int i = 0; i < N; ++i) col[i] = A[i][j];
    fft1d_rec(col);
    for (int i = 0; i < N; ++i) A[i][j] = col[i];
  }
}
