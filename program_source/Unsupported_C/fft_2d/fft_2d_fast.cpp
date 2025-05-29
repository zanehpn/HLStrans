// File: fft2d_hls.cpp
#include <hls_stream.h>
#include <complex>
#define N 4096

typedef std::complex<float> cplx;
typedef hls::stream<cplx> cstream;

// 1D FFT kernel (radix‑2, iterative)
void fft1d(hls::stream<cplx>& in, hls::stream<cplx>& out, int n) {
  #pragma HLS INLINE off
  cplx buf[N];
  // Load
  for (int i = 0; i < n; i++) {
    #pragma HLS PIPELINE II=1
    buf[i] = in.read();
  }
  // Iterative in‑place Cooley–Tuk
  for (int len = 2; len <= n; len <<= 1) {
    float ang = -2.0f * 3.14159265f / len;
    for (int i = 0; i < n; i += len) {
      for (int j = 0; j < len/2; j++) {
        #pragma HLS PIPELINE II=1
        cplx u = buf[i+j];
        cplx v = buf[i+j+len/2] * std::polar(1.0f, ang*j);
        buf[i+j]        = u + v;
        buf[i+j+len/2]  = u - v;
      }
    }
  }
  // Store
  for (int i = 0; i < n; i++) {
    #pragma HLS PIPELINE II=1
    out.write(buf[i]);
  }
}

// Top‑level 2D FFT: row + transpose + col + normalization
void fft2d(hls::stream<cplx>& inStr, hls::stream<cplx>& outStr) {
  #pragma HLS DATAFLOW
  static cstream rowStr, colStr;

  // Row FFT
  fft1d(inStr, rowStr, N);                              
  // Transpose on‑the‑fly
  for (int i = 0; i < N; i++) {
    for (int j = 0; j < N; j++) {
      #pragma HLS PIPELINE II=1
      cplx v = rowStr.read();
      colStr.write(v);  // swap i,j in addressing within downstream kernels
    }
  }
  // Column FFT
  fft1d(colStr, rowStr, N);                              
  // Output normalized magnitude
  for (int i = 0; i < N*N; i++) {
    #pragma HLS PIPELINE II=1
    cplx v = rowStr.read();
    outStr.write(std::abs(v) / (float)N);                 
  }
}
