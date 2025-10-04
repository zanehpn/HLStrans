// Converted from primMST_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: primMST.cpp ----
#include <limits.h>

#define V 1024

void primMST(int graph[V][V], int parent[V]) {

    int key[V];
    bool mstSet[V];

    for (int i = 0; i < V; i++) {

        key[i] = INT_MAX;
        mstSet[i] = false;
    }

    key[0] = 0;
    parent[0] = -1;

    for (int count = 0; count < V - 1; count++) {

        int min = INT_MAX, min_index;

        for (int v = 0; v < V; v++) {

            if (mstSet[v] == false && key[v] < min) {
                min = key[v];
                min_index = v;
            }
        }

        int u = min_index;
        mstSet[u] = true;

        for (int v = 0; v < V; v++) {

            if (graph[u][v] && mstSet[v] == false && graph[u][v] < key[v]) {
                parent[v] = u;
                key[v] = graph[u][v];
            }
        }
    }
}

// Top function name: primMST
