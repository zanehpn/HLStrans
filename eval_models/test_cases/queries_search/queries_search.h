#include <ap_int.h>
#include <float.h>
#include <math.h>
#include <stdio.h>

#define TARGETS 3000
#define QUERIES 1000
#define DIMS 3

#ifndef COMPUTE_TARGETS
#define COMPUTE_TARGETS (16)
#endif

#ifndef COMPUTE_QUERIES
#define COMPUTE_QUERIES (16)
#endif

#define QUERY_BLOCKS ((QUERIES - 1) / COMPUTE_QUERIES + 1)
#define TARGET_BLOCKS ((TARGETS - 1) / COMPUTE_TARGETS + 1)

typedef ap_ufixed<38, 20> diff_t;

void queries_search(float *targets, float *queries, unsigned int *indices);