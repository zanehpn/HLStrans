#include <math.h>

void correlation(double float_n, double data[100][80], double corr[80][80], double mean[80], double stddev[80])
{
#pragma HLS ARRAY_PARTITION variable=data cyclic dim=1 factor=10
#pragma HLS ARRAY_PARTITION variable=corr cyclic dim=2 factor=16
#pragma HLS INTERFACE m_axi port=data depth=8000
#pragma HLS INTERFACE m_axi port=corr depth=6400

  double eps = 0.1;
  
  // Calculate mean with reduced unrolling
  MEAN_LOOP:
  for (int j = 0; j < 80; j++) {
  #pragma HLS PIPELINE II=2
    mean[j] = 0.0;
    for (int i = 0; i < 100; i++) {
    #pragma HLS UNROLL factor=10
      mean[j] += data[i][j];
    }
    mean[j] /= float_n;
  }

  // Calculate stddev with manual square optimization
  STDDEV_LOOP:
  for (int j = 0; j < 80; j++) {
  #pragma HLS PIPELINE II=4
    stddev[j] = 0.0;
    for (int i = 0; i < 100; i++) {
    #pragma HLS UNROLL factor=10
      double temp = data[i][j] - mean[j];
      stddev[j] += temp * temp;  // Avoid pow() call
    }
    stddev[j] /= float_n;
    stddev[j] = sqrt(stddev[j]);
    stddev[j] = (stddev[j] <= eps) ? 1.0 : stddev[j];
  }

  // Data normalization with resource sharing
  NORM_LOOP:
  for (int i = 0; i < 100; i++) {
  #pragma HLS PIPELINE II=2
    for (int j = 0; j < 80; j++) {
    #pragma HLS UNROLL factor=16
      data[i][j] -= mean[j];
      data[i][j] /= (sqrt(float_n) * stddev[j]);
    }
  }

  // Correlation matrix with loop tiling
  CORR_LOOP:
  for (int i = 0; i < 79; i++) {
  #pragma HLS PIPELINE II=8
    corr[i][i] = 1.0;
    for (int j = i + 1; j < 80; j++) {
    #pragma HLS LOOP_FLATTEN
      double acc = 0.0;
      for (int k = 0; k < 100; k++) {
      #pragma HLS UNROLL factor=10
        acc += data[k][i] * data[k][j];
      }
      corr[i][j] = acc;
      corr[j][i] = acc;
    }
  }
  corr[79][79] = 1.0;
}