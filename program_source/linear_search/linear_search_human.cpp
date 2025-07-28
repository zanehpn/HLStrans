
#include <ap_int.h>
#include <float.h>
#include <math.h>
#include <stdio.h>

#include "linear_search.h"

diff_t linear_search_compute_elem(unsigned int target_x,
                                  unsigned int target_y,
                                  unsigned int target_z,
                                  unsigned int query_x,
                                  unsigned int query_y,
                                  unsigned int query_z) {
   #pragma HLS INLINE

    ap_fixed<32, 16> target_x_fixed, target_y_fixed, target_z_fixed, query_x_fixed, query_y_fixed, query_z_fixed;
    target_x_fixed.range(31, 0) = target_x;
    target_y_fixed.range(31, 0) = target_y;
    target_z_fixed.range(31, 0) = target_z;
    query_x_fixed.range(31, 0) = query_x;
    query_y_fixed.range(31, 0) = query_y;
    query_z_fixed.range(31, 0) = query_z;

    ap_fixed<17, 8, AP_TRN, AP_SAT> target_x_trn, target_y_trn, target_z_trn, query_x_trn, query_y_trn, query_z_trn;
    target_x_trn = target_x_fixed;
    target_y_trn = target_y_fixed;
    target_z_trn = target_z_fixed;
    query_x_trn = query_x_fixed;
    query_y_trn = query_y_fixed;
    query_z_trn = query_z_fixed;

    ap_fixed<18, 9, AP_TRN> dist_x, dist_y, dist_z;
    dist_x = target_x_trn - query_x_trn;
    dist_y = target_y_trn - query_y_trn;
    dist_z = target_z_trn - query_z_trn;

    #pragma HLS RESOURCE variable=dist_x core=AddSub_DSP
    #pragma HLS RESOURCE variable=dist_y core=AddSub_DSP
    #pragma HLS RESOURCE variable=dist_z core=AddSub_DSP

    ap_ufixed<36, 18, AP_TRN> pair_dist_x, pair_dist_y, pair_dist_z;
    pair_dist_x = dist_x * dist_x;
    pair_dist_y = dist_y * dist_y;
    pair_dist_z = dist_z * dist_z;

    diff_t pair_dist = pair_dist_x;
    pair_dist += pair_dist_y;
    pair_dist += pair_dist_z;
    #pragma HLS RESOURCE variable=pair_dist core=AddSub_DSP

    return pair_dist;
}

void linear_search_compute(

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
                            linear_search_compute_elem(ltargets[k][0],
                                                       ltargets[k][1],
                                                       ltargets[k][2],
                                                       lqueries[j][0],
                                                       lqueries[j][1],
                                                       lqueries[j][2]);
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

void linear_search(float *targets, float *queries, unsigned int *indices) {

    unsigned int queries_buf[QUERY_BLOCKS][COMPUTE_QUERIES][DIMS];
    #pragma HLS ARRAY_PARTITION variable = queries_buf complete dim = 2
    #pragma HLS ARRAY_PARTITION variable = queries_buf complete dim = 3


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
    #pragma HLS ARRAY_PARTITION variable = targets_buf complete dim = 2
    #pragma HLS ARRAY_PARTITION variable = targets_buf complete dim = 3


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
#pragma HLS ARRAY_PARTITION variable = indices_buf complete dim = 2


    linear_search_compute(targets_buf, queries_buf, indices_buf);

INDICES_LOOP:
    for (size_t i = 0; i < QUERIES; i++) {
       #pragma HLS PIPELINE II=1
        size_t x = i % COMPUTE_QUERIES;
        size_t y = i / COMPUTE_QUERIES;
        indices[i] = indices_buf[y][x];
    }
}

