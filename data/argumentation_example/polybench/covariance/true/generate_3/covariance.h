#ifndef COVARIANCE_H
#define COVARIANCE_H

#include <hls_stream.h>

void covariance(int m, int n, double float_n, double data[100][80], double cov[80][80], double mean[80]);

#endif