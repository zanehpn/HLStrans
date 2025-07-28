// file: cc_hls_tb.cpp
#include <iostream>
#include <cstring>
#include <queue>
#include <cassert>


struct Edge { int to, next; };
// Include the HLS kernel (cc_hls.cpp must be compiled alongside)
void countCC(int head[512], Edge edges[2048],
             bool vis[512], int &cc);

// Reference CPU implementation for connected components
int countCC_ref(int head[512], Edge edges[2048], bool vis_ref[512]) {
    int cc = 0;
    std::queue<int> q;
    for (int i = 0; i < 512; ++i) {
        if (!vis_ref[i]) {
            vis_ref[i] = true;
            q.push(i);
            while (!q.empty()) {
                int u = q.front(); q.pop();
                for (int e = head[u]; e != -1; e = edges[e].next) {
                    int v = edges[e].to;
                    if (!vis_ref[v]) {
                        vis_ref[v] = true;
                        q.push(v);
                    }
                }
            }
            cc++;
        }
    }
    return cc;
}

int main() {
    // Kernel parameters
    constexpr int V = 512;
    constexpr int E = 2048;

    static int head[V];
    static Edge edges[E];
    static bool vis[V];
    static bool vis_ref[V];
    int cc_hls = 0, cc_cpu = 0;

    // 1) Initialize head to -1, vis arrays to false
    std::memset(head, -1, sizeof(head));
    std::memset(vis, 0, sizeof(vis));
    std::memset(vis_ref, 0, sizeof(vis_ref));

    // 2) Build a test graph with two components:
    //    Component A: 0-1-2
    //    Component B: 3-4
    // We'll insert edges undirected.
    int edge_cnt = 0;
    auto add_edge = [&](int u, int v){
        edges[edge_cnt] = { v, head[u] };
        head[u] = edge_cnt++;
    };

    // Component A
    add_edge(0,1); add_edge(1,0);
    add_edge(1,2); add_edge(2,1);

    // Component B
    add_edge(3,4); add_edge(4,3);

    // Remaining nodes [5..511] are isolated => each is its own CC.

    // 3) Call HLS kernel
    countCC(head, edges, vis, cc_hls);

    // 4) Compute reference CC count
    cc_cpu = countCC_ref(head, edges, vis_ref);

    // 5) Compare and report
    std::cout << "HLS CC count = " << cc_hls << "\n";
    std::cout << "CPU CC count = " << cc_cpu << "\n";

    if (cc_hls == cc_cpu) {
        std::cout << "TEST PASSED\n";
        return 0;
    } else {
        std::cout << "TEST FAILED\n";
        return 1;
    }
}
