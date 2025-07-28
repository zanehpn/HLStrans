// bfs_tb.cpp
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <queue>
#include <vector>
#define MAX_VERTICES 1024
#define MAX_EDGES    8192
// Declaration of the HLS BFS kernel
extern "C" {
void bfs(
    const int adj_ptr[MAX_VERTICES+1],
    const int adj_list[MAX_EDGES],
    int       visited[MAX_VERTICES],
    int       queue_buf[MAX_VERTICES],
    int      *visit_order,
    const int  vertex_num,
    int       *order_len
);
}

// Simple software BFS to produce reference output
void bfs_ref(int V,
             const std::vector<std::vector<int>> &adj,
             int visit_order_ref[MAX_VERTICES],
             int &order_len_ref)
{
    std::vector<bool> vis(V, false);
    std::queue<int> q;
    order_len_ref = 0;

    vis[0] = true;
    q.push(0);
    while (!q.empty()) {
        int u = q.front(); q.pop();
        visit_order_ref[order_len_ref++] = u;
        for (int v : adj[u]) {
            if (!vis[v]) {
                vis[v] = true;
                q.push(v);
            }
        }
    }
}

int main() {
    // Define a small test graph
    // V=6, edges: 0→{1,2}, 1→{3}, 2→{3,4}, 3→{5}, 4→{}, 5→{}
    const int V = 6;
    std::vector<std::vector<int>> adj(V);
    adj[0] = {1,2};
    adj[1] = {3};
    adj[2] = {3,4};
    adj[3] = {5};
    adj[4] = {};
    adj[5] = {};

    // Build CSR representation
    int adj_ptr[MAX_VERTICES+1];
    int adj_list[MAX_EDGES];
    int edge_count = 0;

    adj_ptr[0] = 0;
    for (int u = 0; u < V; ++u) {
        for (int v : adj[u]) {
            adj_list[edge_count++] = v;
        }
        adj_ptr[u+1] = edge_count;
    }

    // HLS kernel I/O
    int visited_hw[MAX_VERTICES];
    int queue_buf_hw[MAX_VERTICES];
    int order_hw[MAX_VERTICES];
    int order_len_hw = 0;

    // Initialize outputs
    memset(visited_hw, 0, sizeof(visited_hw));
    memset(order_hw, -1, sizeof(order_hw));

    // Call the HLS BFS
    bfs(adj_ptr, adj_list, visited_hw, queue_buf_hw,
        order_hw, V, &order_len_hw);

    // Reference BFS
    int order_ref[MAX_VERTICES];
    int order_len_ref;
    bfs_ref(V, adj, order_ref, order_len_ref);

    // Compare
    bool pass = true;
    if (order_len_hw != order_len_ref) {
        std::printf("Length mismatch: HW=%d, REF=%d\n",
                    order_len_hw, order_len_ref);
        pass = false;
    }
    for (int i = 0; i < order_len_ref; ++i) {
        if (order_hw[i] != order_ref[i]) {
            std::printf("Order mismatch at idx %d: HW=%d, REF=%d\n",
                        i, order_hw[i], order_ref[i]);
            pass = false;
        }
    }
    // Also check visited flags
    for (int u = 0; u < V; ++u) {
        int ref_flag = 0;
        for (int i = 0; i < order_len_ref; ++i)
            if (order_ref[i] == u) { ref_flag = 1; break; }
        if (visited_hw[u] != ref_flag) {
            std::printf("Visited flag mismatch for node %d: HW=%d, REF=%d\n",
                        u, visited_hw[u], ref_flag);
            pass = false;
        }
    }

    if (pass) {
        std::printf("PASS\n");
        return 0;
    } else {
        std::printf("TEST FAIL\n");
        return 1;
    }
}
