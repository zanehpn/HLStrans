#include <stdio.h>
#include <string.h>
#include <stdbool.h>

#define MAX_NODES      100
#define MAX_EDGES      1000
#define NUM_NODES_GUESS 50
#define NUM_EDGES_GUESS 500

// 被测函数声明
void compute_neighbor_tables(
    int edge_list[MAX_EDGES][2],
    int in_degree_table[MAX_NODES],
    int out_degree_table[MAX_NODES],
    int neighbor_table_offsets[MAX_NODES],
    int neighbor_table[MAX_EDGES],
    int num_nodes,
    int num_edges);

// 参考实现，用于生成期望结果
void reference_compute(
    int edge_list[][2],
    int in_deg[], 
    int out_deg[],
    int ref_offsets[],
    int ref_table[],
    int num_nodes, int num_edges)
{
    int temp_off[MAX_NODES];
    ref_offsets[0] = 0;
    temp_off[0] = 0;
    for (int i = 1; i < num_nodes; i++) {
        int c = ref_offsets[i-1] + in_deg[i-1];
        ref_offsets[i] = c;
        temp_off[i]   = c;
    }
    for (int i = 0; i < num_edges; i++) {
        int s = edge_list[i][0], d = edge_list[i][1];
        int off = temp_off[d]++;
        ref_table[off] = s;
    }
}

int main() {
    // --- 1) 构造测试图 ---
    // 图：0→1, 0→2, 1→2, 2→0, 2→3
    const int num_nodes = 4, num_edges = 5;
    int edge_list[MAX_EDGES][2] = {
        {0,1}, {0,2}, {1,2}, {2,0}, {2,3}
    };

    // 计算入度/出度表
    int in_deg[MAX_NODES]  = {0};
    int out_deg[MAX_NODES] = {0};
    for (int i = 0; i < num_edges; i++) {
        int s = edge_list[i][0], d = edge_list[i][1];
        out_deg[s]++; in_deg[d]++;
    }

    // --- 2) 调用被测函数 ---
    int offsets[MAX_NODES];
    int table  [MAX_EDGES];
    memset(offsets, 0, sizeof(offsets));
    memset(table,   -1, sizeof(table));
    compute_neighbor_tables(edge_list, in_deg, out_deg,
                             offsets, table, num_nodes, num_edges);

    // --- 3) 生成参考结果 ---
    int ref_off   [MAX_NODES];
    int ref_table [MAX_EDGES];
    memset(ref_table, -1, sizeof(ref_table));
    reference_compute(edge_list, in_deg, out_deg,
                      ref_off, ref_table, num_nodes, num_edges);

    // --- 4) 对比检查 ---
    bool pass = true;
    for (int i = 0; i < num_nodes; i++) {
        if (offsets[i] != ref_off[i]) {
            printf("FAIL: offset[%d] = %d, expected %d\n",
                   i, offsets[i], ref_off[i]);
            pass = false;
            break;
        }
    }
    if (pass) {
        for (int i = 0; i < num_edges; i++) {
            if (table[i] != ref_table[i]) {
                printf("FAIL: table[%d] = %d, expected %d\n",
                       i, table[i], ref_table[i]);
                pass = false;
                break;
            }
        }
    }

    // --- 5) 输出结果 ---
    if (pass) {
        printf("PASS\n");
    }

    return pass ? 0 : 1;
}