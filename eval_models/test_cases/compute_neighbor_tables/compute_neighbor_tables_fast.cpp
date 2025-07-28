#define MAX_NODES 100
#define MAX_EDGES 1000
#define NUM_NODES_GUESS 50
#define NUM_EDGES_GUESS 500

void compute_neighbor_tables(
    int edge_list[MAX_EDGES][2],
    int in_degree_table[MAX_NODES],
    int out_degree_table[MAX_NODES],
    int neighbor_table_offsets[MAX_NODES],
    int neighbor_table[MAX_EDGES],
    int num_nodes,
    int num_edges) {

    int neightbor_table_offsets_temp[MAX_NODES];
#pragma HLS RESOURCE variable=neightbor_table_offsets_temp core=RAM_2P_BRAM

    // Initialize offsets
    neighbor_table_offsets[0] = 0;
    neightbor_table_offsets_temp[0] = 0;

    // Compute cumulative sums for neighbor table offsets
    for (int i = 1; i < num_nodes; i++) {
#pragma HLS loop_tripcount min = 1 max = NUM_NODES_GUESS
        int csum = neighbor_table_offsets[i - 1] + in_degree_table[i - 1];
        neighbor_table_offsets[i] = csum;
        neightbor_table_offsets_temp[i] = csum;
    }

    // Fill neighbor table based on computed offsets
    for (int i = 0; i < num_edges; i++) {
#pragma HLS loop_tripcount min = 1 max = NUM_EDGES_GUESS
        int source = edge_list[i][0];
        int dest = edge_list[i][1];

        int offset = neightbor_table_offsets_temp[dest];
        neighbor_table[offset] = source;
        neightbor_table_offsets_temp[dest]++;
    }
}