# 1 "benchmark/sgd/sgd.hpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "benchmark/sgd/sgd.hpp"


const int NUM_FEATURES = 1024;
const int NUM_SAMPLES = 5000;
const int NUM_TRAINING = 4500;
const int NUM_TESTING = 500;
const int STEP_SIZE = 60000;
const int NUM_EPOCHS = 5;
const int DATA_SET_SIZE = NUM_FEATURES * NUM_SAMPLES;


typedef float FeatureType;
typedef float DataType;
typedef unsigned char LabelType;


FeatureType dotProduct(FeatureType param[NUM_FEATURES],
                       DataType feature[NUM_FEATURES])
{
  FeatureType result = 0;
  DOT: for (int i = 0; i < NUM_FEATURES; i++)
    result += param[i] * feature[i];
  return result;
}

FeatureType Sigmoid(FeatureType exponent)
{
  return 1 / (1 + expf(-exponent));
}


void computeGradient(
    FeatureType grad[NUM_FEATURES],
    DataType feature[NUM_FEATURES],
    FeatureType scale)
{
  GRAD: for (int i = 0; i < NUM_FEATURES; i++)
    grad[i] = scale * feature[i];
}


void updateParameter(
    FeatureType param[NUM_FEATURES],
    FeatureType grad[NUM_FEATURES],
    FeatureType scale)
{
  UPDATE: for (int i = 0; i < NUM_FEATURES; i++)
    param[i] += scale * grad[i];
}


void sgd( DataType data[NUM_FEATURES * NUM_TRAINING],
               LabelType label[NUM_TRAINING],
               FeatureType theta[NUM_FEATURES])
{
#pragma HLS INTERFACE m_axi port=data offset=slave bundle=gmem0
#pragma HLS INTERFACE m_axi port=label offset=slave bundle=gmem1
#pragma HLS INTERFACE m_axi port=theta offset=slave bundle=gmem2

#pragma HLS INTERFACE s_axilite port=return bundle=control


  FeatureType gradient[NUM_FEATURES];



  EPOCH: for (int epoch = 0; epoch < NUM_EPOCHS; epoch ++)
  {

    TRAINING_INST: for( int training_id = 0; training_id < NUM_TRAINING; training_id ++ )
    {

      FeatureType dot = dotProduct(theta, &data[NUM_FEATURES * training_id]);

      FeatureType prob = Sigmoid(dot);

      computeGradient(gradient, &data[NUM_FEATURES * training_id], (prob - label[training_id]));

      updateParameter(theta, gradient, -STEP_SIZE);
    }
  }
}
