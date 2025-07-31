#define MAX_NODES 100
#define MAX_EDGES 1000
#define NUM_NODES_GUESS 50
#define NUM_EDGES_GUESS 500

void compute_neighbor_tables_optimized(
    int edge_list[MAX_EDGES][2],
    int in_degree_table[MAX_NODES],
    int out_degree_table[MAX_NODES],
    int neighbor_table_offsets[MAX_NODES],
    int neighbor_table[MAX_EDGES],
    int num_nodes,
    int num_edges) {

    // Initialize offsets and temporary offsets
    neighbor_table_offsets[0] = 0;
    int temp_offset = 0;

    // Compute offsets in a single loop
    for (int i = 1; i < num_nodes; i++) {
#pragma HLS loop_tripcount min = 1 max = NUM_NODES_GUESS
        temp_offset += in_degree_table[i - 1];
        neighbor_table_offsets[i] = temp_offset;
    }

    // Compute neighbor table in a single loop
    for (int i = 0; i < num_edges; i++) {
#pragma HLS loop_tripcount min = 1 max = NUM_EDGES_GUESS
        int source = edge_list[i][0];
        int dest = edge_list[i][1];
        int offset = neighbor_table_offsets[dest];
        neighbor_table[offset] = source;
        neighbor_table_offsets[dest]++;
    }
}