#ifndef BICG_H
#define BICG_H

#include <ap_int.h>

#define N 128
#define DATA_TYPE int

void bicg(DATA_TYPE A[N][N], DATA_TYPE p[N], DATA_TYPE r[N], DATA_TYPE s_out[N], DATA_TYPE q_out[N]);

#endif // BICG_H

