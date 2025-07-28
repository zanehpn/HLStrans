#include <cmath>
#include <limits>
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

diff_t compute_distance(unsigned int target[DIMS], unsigned int query[DIMS]) {
    #pragma HLS INLINE

    ap_fixed<32, 16> target_fixed[DIMS], query_fixed[DIMS];
    for (int i = 0; i < DIMS; i++) {
        target_fixed[i].range(31, 0) = target[i];
        query_fixed[i].range(31, 0) = query[i];
    }

    ap_fixed<17, 8, AP_TRN, AP_SAT> target_trn[DIMS], query_trn[DIMS];
    for (int i = 0; i < DIMS; i++) {
        target_trn[i] = target_fixed[i];
        query_trn[i] = query_fixed[i];
    }

    ap_fixed<18, 9, AP_TRN> dist[DIMS];
    for (int i = 0; i < DIMS; i++) {
        dist[i] = target_trn[i] - query_trn[i];
        #pragma HLS RESOURCE variable=dist[i] core=AddSub_DSP
    }

    ap_ufixed<36, 18, AP_TRN> pair_dist[DIMS];
    for (int i = 0; i < DIMS; i++) {
        pair_dist[i] = dist[i] * dist[i];
    }

    diff_t total_dist = pair_dist[0];
    for (int i = 1; i < DIMS; i++) {
        total_dist += pair_dist[i];
        #pragma HLS RESOURCE variable=total_dist core=AddSub_DSP
    }

    return total_dist;
}

void queries_search_compute(
    unsigned int targets[TARGET_BLOCKS][COMPUTE_TARGETS][DIMS],
    unsigned int queries[QUERY_BLOCKS][COMPUTE_QUERIES][DIMS],
    unsigned int indices[QUERY_BLOCKS][COMPUTE_QUERIES]
) {
    #pragma HLS INLINE

    diff_t dists[QUERY_BLOCKS][COMPUTE_QUERIES];
    #pragma HLS ARRAY_PARTITION variable=dists complete dim=2

COMPUTE_LOOP:
    for (size_t i = 0; i < TARGET_BLOCKS * QUERY_BLOCKS; i++) {
        {
            size_t t = i / QUERY_BLOCKS;
            size_t q = i % QUERY_BLOCKS;
            #pragma HLS PIPELINE II=1

            diff_t ldists[COMPUTE_QUERIES][COMPUTE_TARGETS];
            #pragma HLS ARRAY_PARTITION variable=ldists complete dim=0

            diff_t min_dist[COMPUTE_QUERIES];
            unsigned int min_indices[COMPUTE_QUERIES];
            #pragma HLS ARRAY_PARTITION variable=min_dist complete
            #pragma HLS ARRAY_PARTITION variable=min_indices complete

            for (size_t j = 0; j < COMPUTE_QUERIES; j++) {
                if (t == 0) {
                    min_dist[j].range(37, 0) = 0x3FFFFFFFFL;
                    min_indices[j] = -1;
                } else {
                    min_dist[j] = dists[q][j];
                    min_indices[j] = indices[q][j];
                }
            }

            unsigned int lqueries[COMPUTE_QUERIES][DIMS];
            #pragma HLS ARRAY_PARTITION variable=lqueries complete dim=0

            for (size_t j = 0; j < COMPUTE_QUERIES; j++) {
                for (size_t k = 0; k < DIMS; k++) {
                    lqueries[j][k] = queries[q][j][k];
                }
            }

            unsigned int ltargets[COMPUTE_TARGETS][DIMS];
            #pragma HLS ARRAY_PARTITION variable=ltargets complete dim=0

            for (size_t j = 0; j < COMPUTE_TARGETS; j++) {
                #pragma HLS UNROLL
                for (size_t k = 0; k < DIMS; k++) {
                    #pragma HLS UNROLL
                    ltargets[j][k] = targets[t][j][k];
                }
            }

            for (size_t j = 0; j < COMPUTE_QUERIES; j++) {
                for (size_t k = 0; k < COMPUTE_TARGETS; k++) {
                    if (t * COMPUTE_TARGETS + k < TARGETS &&
                        q * COMPUTE_QUERIES + j < QUERIES) {
                        ldists[j][k] =
                            compute_distance(ltargets[k], lqueries[j]);
                    } else {
                        /* Set to positive infinity */
                        ldists[j][k].range(37, 0) = 0x3FFFFFFFFFL;
                    }
                }
            }

            for (size_t j = 0; j < COMPUTE_QUERIES; j++) {
                for (size_t k = 0; k < COMPUTE_TARGETS; k++) {
                    if (ldists[j][k] < min_dist[j]) {
                        min_dist[j] = ldists[j][k];
                        min_indices[j] = t * COMPUTE_TARGETS + k;
                    }
                }
            }

            for (size_t j = 0; j < COMPUTE_QUERIES; j++) {
                dists[q][j] = min_dist[j];
                indices[q][j] = min_indices[j];
            }
        }
    }
}

void queries_search(float *targets, float *queries, unsigned int *indices) {
    unsigned int queries_buf[QUERY_BLOCKS][COMPUTE_QUERIES][DIMS];
    #pragma HLS ARRAY_PARTITION variable=queries_buf complete dim=2
    #pragma HLS ARRAY_PARTITION variable=queries_buf complete dim=3

QUERIES_LOOP:
    for (size_t i = 0; i < QUERIES * DIMS; i++) {
        #pragma HLS PIPELINE II=1
        size_t x = i % DIMS;
        size_t y = (i / DIMS) % COMPUTE_QUERIES;
        size_t z = i / DIMS / COMPUTE_QUERIES;
        ap_fixed<32, 16, AP_TRN, AP_SAT> tfixed = queries[i];
        queries_buf[z][y][x] = tfixed.range(31, 0);
    }

    unsigned int targets_buf[TARGET_BLOCKS][COMPUTE_TARGETS][DIMS];
    #pragma HLS ARRAY_PARTITION variable=targets_buf complete dim=2
    #pragma HLS ARRAY_PARTITION variable=targets_buf complete dim=3

TARGETS_LOOP:
    for (size_t i = 0; i < TARGETS * DIMS; i++) {
        #pragma HLS PIPELINE II=1
        size_t x = i % DIMS;
        size_t y = (i / DIMS) % COMPUTE_TARGETS;
        size_t z = i / DIMS / COMPUTE_TARGETS;
        ap_fixed<32, 16, AP_TRN, AP_SAT> tfixed = targets[i];
        targets_buf[z][y][x] = tfixed.range(31, 0);
    }

    unsigned int indices_buf[QUERY_BLOCKS][COMPUTE_QUERIES];
    #pragma HLS ARRAY_PARTITION variable=indices_buf complete dim=2

    queries_search_compute(targets_buf, queries_buf, indices_buf);

INDICES_LOOP:
    for (size_t i = 0; i < QUERIES; i++) {
        #pragma HLS PIPELINE II=1
        size_t x = i % COMPUTE_QUERIES;
        size_t y = i / COMPUTE_QUERIES;
        indices[i] = indices_buf[y][x];
    }
}