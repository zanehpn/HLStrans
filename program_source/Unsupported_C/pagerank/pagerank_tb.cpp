#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define EPSILON 1e-6
#define MAX_ITER 100
void pagerank(
    int   *rpao,           
    int   *ciao,           
    float       *pr,             
    int    vertex_num,
    float  damping_factor
);

// Testbench
int main() {
    // Example graph:
    // 0 -> 1, 0 -> 2
    // 1 -> 0, 1 -> 2
    // 2 -> 1

    // Compressed Sparse Row (CSR) representation
    int rpao[] = {0, 2, 4, 5};      // Row pointer array
    int ciao[] = {1, 2, 0, 2, 1};   // Column indices array
    int vertex_num = 3;             // Number of vertices
    float damping_factor = 0.85;    // Damping factor for PageRank

    // Initialize PageRank values (uniform distribution)
    float pr[vertex_num];
    for (int i = 0; i < vertex_num; i++) {
        pr[i] = 1.0 / vertex_num;
    }

    // Call the kernel
    pagerank(rpao, ciao, pr, vertex_num, damping_factor);

    // Expected PageRank values for the given graph (approximated for demonstration)
    float expected_pr[] = {0.233918, 0.432748, 0.333333};

    // Validate results
    int success = 1;
    for (int i = 0; i < vertex_num; i++) {
        printf("Node %d: Computed PageRank = %.6f, Expected PageRank = %.6f\n", i, pr[i], expected_pr[i]);
        if (fabs(pr[i] - expected_pr[i]) > EPSILON) {
            success = 0;
        }
    }

    if (success) {
        printf("\nTest PASSED: PageRank values are within the acceptable error range.\n");
    } else {
        printf("\nTest FAILED: Computed PageRank values do not match the expected results.\n");
    }

    return 0;
}
