
#include <stdio.h>
#include <stdlib.h>
#include <limits.h>
#define MAX_ITER 100
#define EPSILON 1e-6

static void pagerank_kernel(
    const int *rpao, 
    const int *ciao, 
    float *pr, 
    const int vertex_num, 
    const float damping_factor
) {
    float *new_pr = (float *)malloc(vertex_num, sizeof(float));
    if (new_pr == NULL) {
        printf("Error: Memory allocation failed for new_pr.\n");
        return;
    }

    // Iterative PageRank computation
    for (int iter = 0; iter < MAX_ITER; iter++) {
        // Reset new_pr to handle current iteration
        for (int i = 0; i < vertex_num; i++) {
            new_pr[i] = 0.0;
        }

        // Compute contributions to new_pr
        for (int i = 0; i < vertex_num; i++) {
            int start = rpao[i];
            int end = rpao[i + 1];

            int out_degree = end - start;
            if (out_degree > 0) {
                for (int j = start; j < end; j++) {
                    int ngb_idx = ciao[j];
                    new_pr[ngb_idx] += pr[i] / out_degree;
                }
            } else {
                // Handle dangling nodes: contribute uniformly to all nodes
                for (int k = 0; k < vertex_num; k++) {
                    new_pr[k] += pr[i] / vertex_num;
                }
            }
        }

        // Apply damping factor
        float diff = 0.0; // To track convergence
        for (int i = 0; i < vertex_num; i++) {
            new_pr[i] = (1.0 - damping_factor) / vertex_num + damping_factor * new_pr[i];
            diff += fabs(new_pr[i] - pr[i]);
            pr[i] = new_pr[i]; // Update pr for the next iteration
        }

        // Check for convergence
        if (diff < EPSILON) {
            printf("Converged after %d iterations.\n", iter + 1);
            break;
        }
    }

    // Free allocated memory
    free(new_pr);
}


void pagerank(
        const int *rpao, 
        const int *ciao, 
        float *pr, 
        const int vertex_num, 
        const float damping_factor
    ) {

#pragma HLS INTERFACE m_axi port=rpao offset=slave bundle=gmem0
#pragma HLS INTERFACE m_axi port=ciao offset=slave bundle=gmem1
#pragma HLS INTERFACE m_axi port=pr offset=slave bundle=gmem2

#pragma HLS INTERFACE s_axilite port=vertex_num bundle=control
#pragma HLS INTERFACE s_axilite port=damping_factor bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control

        pagerank_kernel(rpao, ciao, pr, vertex_num, damping_factor);
}