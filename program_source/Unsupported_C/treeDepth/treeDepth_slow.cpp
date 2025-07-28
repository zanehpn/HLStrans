#include <stdio.h>
struct Node {
  int val;
  Node *left, *right;
};

int treeDepth(Node* root) {
  if (!root) return 0;
  return 1 + std::max(treeDepth(root->left),
                     treeDepth(root->right));
}