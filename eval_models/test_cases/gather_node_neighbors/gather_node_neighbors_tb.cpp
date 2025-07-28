#include <stdio.h>
#include <string.h>
#include <stdbool.h>

#define MAX_NODES      100
#define MAX_EDGES      1000
#define DEGREE_GUESS   10

// DUT declaration (to be synthesized)
void gather_node_neighbors(
    int node,
    int node_in_degree,
    int node_neighbors[MAX_NODES],
    int neighbor_table_offsets[MAX_NODES],
    int neighbor_table[MAX_EDGES]);

// Reference implementation for verification
void reference_gather(
    int node,
    int node_in_degree,
    int node_neighbors[MAX_NODES],
    int neighbor_table_offsets[MAX_NODES],
    int neighbor_table[MAX_EDGES]) {

    int offset = neighbor_table_offsets[node];
    for (int i = 0; i < node_in_degree; i++) {
        node_neighbors[i] = neighbor_table[offset + i];
    }
}

int main() {
    // --- 1) Define a simple graph with known neighbor tables ---
    // Example: node 2 has in-edges from 0 and 1
    const int num_nodes = 4;
    const int num_edges = 5;
    int edges[MAX_EDGES][2] = {
        {0, 2},
        {1, 2},
        {2, 3},
        {0, 1},
        {3, 0}
    };

    // Compute in-degrees & build neighbor table
    int in_degree[MAX_NODES]     = {0};
    int neighbor_table_offsets[MAX_NODES] = {0};
    int neighbor_table[MAX_EDGES] = {0};

    // 1.a) Count in-degrees
    for (int e = 0; e < num_edges; e++) {
        int dst = edges[e][1];
        in_degree[dst]++;
    }

    // 1.b) Build offsets
    neighbor_table_offsets[0] = 0;
    for (int n = 1; n < num_nodes; n++) {
        neighbor_table_offsets[n] =
            neighbor_table_offsets[n-1] + in_degree[n-1];
    }

    // 1.c) Fill neighbor_table in input order
    int temp_off[MAX_NODES];
    memcpy(temp_off, neighbor_table_offsets, sizeof(temp_off));
    for (int e = 0; e < num_edges; e++) {
        int src = edges[e][0];
        int dst = edges[e][1];
        neighbor_table[temp_off[dst]++] = src;
    }
    // :contentReference[oaicite:1]{index=1}

    // --- 2) Pick a test node to gather neighbors ---
    int test_node = 2;
    int degree    = in_degree[test_node];

    // 2.a) Allocate space for DUT and reference
    int dut_neighbors[MAX_NODES] = {0};
    int ref_neighbors[MAX_NODES] = {0};

    // --- 3) Call DUT and reference ---
    gather_node_neighbors(
        test_node, degree,
        dut_neighbors,
        neighbor_table_offsets,
        neighbor_table
    );

    reference_gather(
        test_node, degree,
        ref_neighbors,
        neighbor_table_offsets,
        neighbor_table
    );
    // :contentReference[oaicite:2]{index=2}

    // --- 4) Compare results ---
    bool pass = true;
    for (int i = 0; i < degree; i++) {
        if (dut_neighbors[i] != ref_neighbors[i]) {
            printf("FAIL: index %d, DUT=%d, REF=%d\n",
                   i, dut_neighbors[i], ref_neighbors[i]);
            pass = false;
            break;
        }
    }

    // --- 5) Print final verdict and return code ---
    if (pass) {
        printf("PASS\n");
        return 0;  // Required by HLS C/RTL co-simulation :contentReference[oaicite:3]{index=3}
    } else {
        printf("FAIL\n");
        return 1;
    }
}