// contents of DigitRec_tb.cpp
#include <iostream>
#include <vector>
#include <algorithm>
#include <cassert>

// Ensure SDSOC path is consistent with the DUT
#define SDSOC
#include "typedefs.h"

// Forward declarations of functions implemented in DigitRec.cpp
int popcount(WholeDigitType x);
void update_knn(WholeDigitType test_inst, WholeDigitType train_inst, int min_distances[K_CONST]);
LabelType knn_vote(int knn_set[PAR_FACTOR * K_CONST]);

// Helper: create a WholeDigitType with the lowest n bits set to 1
static WholeDigitType make_with_n_ones(int n) {
  WholeDigitType x = 0;
  for (int i = 0; i < 256 && i < n; ++i) {
    x[i] = 1;
  }
  return x;
}

// Helper: zero-initialize a WholeDigitType
static WholeDigitType make_zero() {
  WholeDigitType x = 0;
  for (int i = 0; i < 256; ++i) x[i] = 0;
  return x;
}

int main() {
  std::cout << "Running unit tests for DigitRec core functions..." << std::endl;

  // Test 1: popcount - set every other bit and verify count (should be 128)
  {
    WholeDigitType x = 0;
    for (int i = 0; i < 256; ++i) {
      x[i] = (i % 2 == 0) ? 1 : 0;
    }
    int cnt = popcount(x);
    std::cout << "Test 1 (popcount): expected 128, got " << cnt << std::endl;
    assert(cnt == 128);
  }

  // Test 2: update_knn - insert three distances (3, 10, 5) and check K minima are kept
  // - We use test_inst = 0 so distances equal popcounts of train_inst
  {
    WholeDigitType test_inst = make_zero();
    WholeDigitType train1 = make_with_n_ones(3);   // distance 3
    WholeDigitType train2 = make_with_n_ones(10);  // distance 10
    WholeDigitType train3 = make_with_n_ones(5);   // distance 5

    int md[K_CONST] = {256, 256, 256};
    update_knn(test_inst, train1, md);
    update_knn(test_inst, train2, md);
    update_knn(test_inst, train3, md);

    std::vector<int> got(md, md + K_CONST);
    std::sort(got.begin(), got.end());
    std::vector<int> exp = {3, 5, 10};

    std::cout << "Test 2 (update_knn): expected {3,5,10}, got {"
              << got[0] << "," << got[1] << "," << got[2] << "}" << std::endl;
    assert(got == exp);
  }

  // Test 3: update_knn - ensure no replacement occurs when new distance >= current max
  {
    WholeDigitType test_inst = make_zero();
    WholeDigitType far_train = make_with_n_ones(100); // distance 100

    int md[K_CONST] = {3, 4, 5}; // max is 5
    update_knn(test_inst, far_train, md); // 100 >= 5, so no replacement

    std::vector<int> got(md, md + K_CONST);
    std::sort(got.begin(), got.end());
    std::vector<int> exp = {3, 4, 5};

    std::cout << "Test 3 (update_knn no-replace): expected {3,4,5}, got {"
              << got[0] << "," << got[1] << "," << got[2] << "}" << std::endl;
    assert(got == exp);
  }

  // Test 4: knn_vote - all three nearest neighbors belong to label 7
  // - We construct knn_set so that only lane i=28 (label 7 because 28/(40/10)=28/4=7) has very small distances.
  {
    int knn[PAR_FACTOR * K_CONST];
    std::fill(knn, knn + PAR_FACTOR * K_CONST, 100); // default "far" distance

    int lane = 28; // maps to label 7
    knn[lane * K_CONST + 0] = 0;
    knn[lane * K_CONST + 1] = 1;
    knn[lane * K_CONST + 2] = 2;

    LabelType pred = knn_vote(knn);
    std::cout << "Test 4 (knn_vote single label): expected 7, got " << (int)pred << std::endl;
    assert(pred == 7);
  }

  // Test 5: knn_vote - majority voting across top-K
  // - Two nearest neighbors from label 3, one from label 6 => expect label 3
  //   label 3 lanes: 12..15, label 6 lanes: 24..27
  {
    int knn[PAR_FACTOR * K_CONST];
    std::fill(knn, knn + PAR_FACTOR * K_CONST, 100);

    // Two closest from label 3 (lanes 12 and 13)
    knn[12 * K_CONST + 0] = 0; // label 3
    knn[13 * K_CONST + 0] = 1; // label 3

    // One close from label 6 (lane 24)
    knn[24 * K_CONST + 0] = 2; // label 6

    LabelType pred = knn_vote(knn);
    std::cout << "Test 5 (knn_vote majority): expected 3, got " << (int)pred << std::endl;
    assert(pred == 3);
  }

  std::cout << "All tests passed!" << std::endl;
  return 0;
}