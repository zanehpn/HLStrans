#ifndef BICG_H
#define BICG_H

#define N 32
#define DATA_TYPE float

void bicg(DATA_TYPE A[N][N], DATA_TYPE p[N], DATA_TYPE r[N], DATA_TYPE s_out[N], DATA_TYPE q_out[N]);

#endif

