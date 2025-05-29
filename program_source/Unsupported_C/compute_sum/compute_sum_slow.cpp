#include <stdlib.h>
#include <stdio.h>
#include <string.h>
long long compute_sum(int *din, int N, int width) {
    long long *out_accum = malloc(sizeof(long long));
    int *array_local    = malloc(64 * sizeof(int));
    for (int i = 0; i < N; i++) {
        if (i < width) array_local[i] = din[i];
        else           array_local[i] = din[i] >> 2;
    }
    *out_accum = 0;
    for (int j = 0; j < N; j++) {
        *out_accum += array_local[j];
    }
    long long result = *out_accum;
    free(out_accum);
    free(array_local);
    return result;
}
