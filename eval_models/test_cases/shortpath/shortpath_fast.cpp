#include <string.h>
#include <ap_int.h>
#include <hls_math.h>

#define INT_MAX 100000
#define MAX_VERTICES 1000

static void short_path_kernel(
    const int *rpao, 
    const int *ciao, 
    const int *weights, 
    int *distance, 
    const int vertex_num, 
    const int src
) {
#pragma HLS ARRAY_PARTITION variable=distance complete
#pragma HLS DATAFLOW

    // Initialize distance array
    for (int i = 0; i < vertex_num; i++) {
#pragma HLS PIPELINE II=1
        distance[i] = INT_MAX;
    }
    distance[src] = 0;

    bool visited[MAX_VERTICES];
#pragma HLS ARRAY_PARTITION variable=visited complete
    memset(visited, 0, sizeof(bool) * vertex_num);

    for (int i = 0; i < vertex_num - 1; i++) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_VERTICES
        int min_dis = INT_MAX;
        int min_idx = -1;

        // Find the minimum distance vertex not yet visited
        FIND_MIN:
        for (int j = 0; j < vertex_num; j++) {
#pragma HLS PIPELINE II=1
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_VERTICES
            if (!visited[j] && distance[j] < min_dis) {
                min_dis = distance[j];
                min_idx = j;
            }
        }

        visited[min_idx] = true;

        int start = rpao[min_idx];
        int end = rpao[min_idx + 1];

        // Update the distance of the adjacent vertices
        UPDATE_DIST:
        for (int j = start; j < end; j++) {
#pragma HLS PIPELINE II=1
#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_VERTICES
            int ngb_idx = ciao[j];
            int weight = weights[j];
            int new_dis = distance[min_idx] + weight;

            if (new_dis < distance[ngb_idx]) {
                distance[ngb_idx] = new_dis;
            }
        }
    }
}

void short_path(
        const int *rpao, 
        const int *ciao, 
        const int *weights, 
        int *distance, 
        const int vertex_num, 
        const int src
    ) {
#pragma HLS INTERFACE m_axi port=rpao offset=slave bundle=gmem0
#pragma HLS INTERFACE m_axi port=ciao offset=slave bundle=gmem1
#pragma HLS INTERFACE m_axi port=weights offset=slave bundle=gmem2
#pragma HLS INTERFACE m_axi port=distance offset=slave bundle=gmem3
#pragma HLS INTERFACE s_axilite port=rpao bundle=control
#pragma HLS INTERFACE s_axilite port=ciao bundle=control
#pragma HLS INTERFACE s_axilite port=weights bundle=control
#pragma HLS INTERFACE s_axilite port=distance bundle=control
#pragma HLS INTERFACE s_axilite port=vertex_num bundle=control
#pragma HLS INTERFACE s_axilite port=src bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control

    short_path_kernel(rpao, ciao, weights, distance, vertex_num, src);
}