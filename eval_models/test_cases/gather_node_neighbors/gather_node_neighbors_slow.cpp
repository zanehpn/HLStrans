#define MAX_NODES 2000
#define MAX_EDGES 1000
#define DEGREE_GUESS 200

void gather_node_neighbors(
    int node,
    int node_in_degree,
    int node_neighbors[MAX_NODES],
    int neighbor_table_offsets[MAX_NODES],
    int neighbor_table[MAX_EDGES]) {

#pragma HLS INLINE off
    // #pragma HLS INLINE

    int node_offset = neighbor_table_offsets[node];
    for (int i = 0; i < node_in_degree; i++) {
#pragma HLS loop_tripcount min = 1 max = DEGREE_GUESS
        int current_idx = node_offset + i;
        node_neighbors[i] = neighbor_table[current_idx];
    }
}