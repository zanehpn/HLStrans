#include <string.h>
#include <stdlib.h>
typedef struct Node {
    int val;
    struct Node *next;
} Node;

void insert(Node **head, int x) {
    Node *p = *head, *prev = NULL;
    Node *new_node = (Node*)malloc(sizeof(Node));
    new_node->val = x;
    while (p && p->val < x) {
        prev = p;
        p = p->next;
    }
    new_node->next = p;
    if (prev) prev->next = new_node;
    else *head = new_node;
}
