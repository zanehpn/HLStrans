// Converted from bfs.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: bfs.cpp ----
#include <cstdint>

#define N 1024

void bfs(int graph[N][N], int start_node, int distances[N]) {
#pragma HLS ARRAY_PARTITION variable=distances type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=graph type=cyclic dim=2 factor=1
#pragma HLS ARRAY_PARTITION variable=graph type=cyclic dim=1 factor=1
    bool visited[N] = {false};
    int queue[N];
    int front = 0, rear = 0;

    visited[start_node] = true;
    distances[start_node] = 0;
    queue[rear++] = start_node;

    for (int i = 0; i < N; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        distances[i] = -1;
    }
    distances[start_node] = 0;

    for (int i = 0; i < N; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        if (front == rear) break;
        int current = queue[front++];

        for (int j = 0; j < N; j++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
            if (graph[current][j] != 0 && !visited[j]) {
                visited[j] = true;
                distances[j] = distances[current] + 1;
                queue[rear++] = j;
            }
        }
    }
}

// Top function name: bfs
