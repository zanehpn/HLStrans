#include <stdint.h>
#define MAX_NODES 128

typedef struct { int val; int next; } NodeSlot;

void insert(int &head, int &free_head, NodeSlot nodes[MAX_NODES], int x) {
    #pragma HLS PIPELINE II=1
    int new_idx = free_head;
    free_head = nodes[free_head].next;
    nodes[new_idx].val = x;

    int cur = head, prev = -1;
    while (cur != -1 && nodes[cur].val < x) {
        #pragma HLS LOOP_TRIPCOUNT max=MAX_NODES
        prev = cur;
        cur = nodes[cur].next;
    }
    nodes[new_idx].next = cur;
    if (prev == -1) head = new_idx;
    else nodes[prev].next = new_idx;
}
