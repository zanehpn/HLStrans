#include <stdio.h>
#include <stdlib.h>

typedef struct TreeNode {
    int val;
    struct TreeNode *left;
    struct TreeNode *right;
} TreeNode;

TreeNode* create_node(int v) {
    TreeNode *node = (TreeNode*)malloc(sizeof(TreeNode));
    if (!node) {
        fprintf(stderr, "Memory allocation failed\n");
        exit(1);
    }
    node->val   = v;
    node->left  = NULL;
    node->right = NULL;
    return node;
}

TreeNode* insert_bst(TreeNode *root, int v) {
    if (root == NULL) {
        return create_node(v);
    }
    if (v < root->val) {
        root->left  = insert_bst(root->left, v);
    } else {
        root->right = insert_bst(root->right, v);
    }
    return root;
}

void dfs(TreeNode *root) {
    if (root == NULL) return;
    printf("%d ", root->val);
    dfs(root->left);
    dfs(root->right);
}