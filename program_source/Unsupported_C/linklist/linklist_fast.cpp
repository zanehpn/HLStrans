static const int MAX_NODES = 128;
struct Node { int data; int next; };
static Node node_pool[MAX_NODES];
static bool used[MAX_NODES];

int alloc_node() {
    for (int i = 0; i < MAX_NODES; i++) {
#pragma HLS PIPELINE II=1
        if (!used[i]) { used[i] = true; return i; }
    }
    return -1;
}

void insertEnd(int &head_idx, int val) {
    int stack[MAX_NODES], top = -1;
    int new_idx = alloc_node();
    node_pool[new_idx].data = val;
    node_pool[new_idx].next = -1;

    if (head_idx < 0) {
        head_idx = new_idx;
        return;
    }
    stack[++top] = head_idx;
    int curr;
    while (top >= 0) {
#pragma HLS PIPELINE II=1
        curr = stack[top--];
        if (node_pool[curr].next < 0) break;
        stack[++top] = node_pool[curr].next;
    }
    node_pool[curr].next = new_idx;
}
