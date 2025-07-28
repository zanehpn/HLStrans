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

    // Get the starting index of neighbors for the given node
    int node_offset = neighbor_table_offsets[node];

    // Unroll the loop to increase parallelism
    // Assuming DEGREE_GUESS is a multiple of 4 for simplicity
    #pragma HLS LOOP_TRIPCOUNT min=1 max=DEGREE_GUESS
    #pragma HLS UNROLL factor=4
    for (int i = 0; i < node_in_degree; i++) {
        int current_idx = node_offset + i;
        node_neighbors[i] = neighbor_table[current_idx];
    }
}