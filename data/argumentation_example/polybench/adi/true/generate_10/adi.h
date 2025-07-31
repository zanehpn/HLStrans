#ifndef ADI_H
#define ADI_H

#include <hls_stream.h>

static const double a = 1.0;
static const double b = 2.0;
static const double c = 1.0;
static const double d = 2.0;
static const double e = 1.0;
static const double f = 2.0;
static const double term_d_col = 3.0;
static const double term_a_row = 3.0;
static const double neg_f = -f;
static const double neg_c = -c;

void adi(int tsteps, int n, double u[60][60], double v[60][60], double p[60][60], double q[60][60]);

#endif // ADI_H