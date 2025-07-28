#include <iostream>
#include <cmath>
#include <hls_math.h>
//#include "../../../rabs_example/src/sgd/sgd.hpp"
#include "sgd.hpp"

const float THRESHOLD = 0.1f; // Threshold for testing model parameter convergence

int main() {
  // Allocate and initialize synthetic data
  static DataType data[NUM_FEATURES * NUM_TRAINING];
  static LabelType label[NUM_TRAINING];
  static FeatureType theta[NUM_FEATURES];

  // Initialize the synthetic data and labels
  for (int i = 0; i < NUM_TRAINING; i++) {
    label[i] = i % 2; // Alternating 0 and 1 for labels
    for (int j = 0; j < NUM_FEATURES; j++) {
      data[i * NUM_FEATURES + j] = static_cast<DataType>(i + j) / NUM_TRAINING;
    }
  }

  // Initialize the model parameters to zero
  for (int i = 0; i < NUM_FEATURES; i++) {
    theta[i] = 0.0f;
  }

  // Call the SGD function
  sgd(data, label, theta);

  // Test if the parameters have been updated and meet a simple condition
  // Check if at least one value of theta exceeds the threshold
  bool test_passed = false;
  for (int i = 0; i < NUM_FEATURES; i++) {
    if (hls::fabs(theta[i]) > THRESHOLD) {
      test_passed = true;
      break;
    }
  }

  // Print pass or error based on the test result
  if (test_passed) {
    std::cout << "pass" << std::endl;
  } else {
    std::cout << "error" << std::endl;
  }

  return 0;
}
