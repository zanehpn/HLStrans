// implementation content here
#include "gesummv.h"

void gesummv(DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE A[N][N], DATA_TYPE B[N][N], DATA_TYPE x[N], DATA_TYPE y_out[N])
{
    int i, j;
    DATA_TYPE tmp1, tmp2;

    lp1: for(i = 0; i < N; i++) {
        tmp1 = 0;
        tmp2 = 0;
        lp2: for(j = 0; j < N; j++) {
            tmp1 += alpha * A[i][j] * x[j];
            tmp2 += beta * B[i][j] * x[j];
        }
        y_out[i] = tmp1 + tmp2;
    }
}