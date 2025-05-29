// dijkstra_stl.cpp
#include <vector>
#include <queue>
#include <limits>
using PII = std::pair<int,int>;

std::vector<int> dijkstra(int N, const std::vector<std::vector<PII>>& adj, int src) {
    const int INF = std::numeric_limits<int>::max();
    std::vector<int> dist(N, INF);
    dist[src] = 0;
    std::priority_queue<PII, std::vector<PII>, std::greater<PII>> pq;
    pq.emplace(0, src);
    while (!pq.empty()) {
        auto [d,u] = pq.top(); pq.pop();
        if (d > dist[u]) continue;
        for (auto [v, w] : adj[u]) {
            if (d + w < dist[v]) {
                dist[v] = d + w;
                pq.emplace(dist[v], v);
            }
        }
    }
    return dist;
}
