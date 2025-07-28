#include <vector>
using Graph = std::vector<std::vector<int>>;

void dfs(int u, const Graph &G, std::vector<bool> &vis) {
    vis[u] = true;
    for (int v : G[u])
        if (!vis[v]) dfs(v, G, vis);
}

int countCC(const Graph &G) {
    int n = G.size(), cc = 0;
    std::vector<bool> vis(n,false);
    for (int i = 0; i < n; ++i)
        if (!vis[i]) { dfs(i,G,vis); cc++; }
    return cc;
}
