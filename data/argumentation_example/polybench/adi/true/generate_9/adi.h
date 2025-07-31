#ifndef ADI_H
#define ADI_H

static const double DX = 1.0 / 60.0;
static const double DY = 1.0 / 60.0;
static const double DT = 1.0 / 40.0;
static const double B1 = 2.0;
static const double B2 = 1.0;

static const double mul1 = B1 * DT / (DX * DX);
static const double mul2 = B2 * DT / (DY * DY);

static const double a = -mul1 / 2.0;
static const double b = 1.0 + mul1;
static const double c = a;
static const double d = -mul2 / 2.0;
static const double e = 1.0 + mul2;
static const double f = d;

static const double term_d_col = 1.0 + 2.0 * d;
static const double term_a_row = 1.0 + 2.0 * a;
static const double neg_f = -f;
static const double neg_c = -c;

void adi(int tsteps, int n, double u[60][60], double v[60][60], double p[60][60], double q[60][60]);

#endif