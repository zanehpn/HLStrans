# 1 "benchmark/digitrec/digitrec.hpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "benchmark/digitrec/digitrec.hpp"
# 16 "benchmark/digitrec/digitrec.hpp"
typedef unsigned long long DigitType;
typedef unsigned char LabelType;






const unsigned long long m1 = 0x5555555555555555;
const unsigned long long m2 = 0x3333333333333333;
const unsigned long long m4 = 0x0f0f0f0f0f0f0f0f;



int popcount(DigitType x)
{
   x -= (x >> 1) & m1;
   x = (x & m2) + ((x >> 2) & m2);
   x = (x + (x >> 4)) & m4;
   x += x >> 8;
   x += x >> 16;
   x += x >> 32;
   return x & 0x7f;
}

void update_knn( const DigitType* train_inst, const DigitType* test_inst, int dists[3], int labels[3], int label )
{
  int dist = 0;

  for (int i = 0; i < 4; i ++ )
  {
    DigitType diff = test_inst[i] ^ train_inst[i];
    dist += popcount(diff);
  }

  int max_dist = 0;
  int max_dist_id = 3 +1;


  FIND_MAX_DIST: for ( int k = 0; k < 3; ++k )
  {
    if ( dists[k] > max_dist )
    {
      max_dist = dists[k];
      max_dist_id = k;
    }
  }


  if ( dist < max_dist )
  {
    dists[max_dist_id] = dist;
    labels[max_dist_id] = label;
  }

  return;
}

LabelType knn_vote(int labels[3])
{
  int max_vote = 0;
  LabelType max_label = 0;

  int votes[10] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

  for (int i = 0; i < 3; i ++ )
    votes[labels[i]] ++;

  for (int i = 0; i < 10; i ++ )
  {
    if (votes[i] > max_vote)
    {
      max_vote = votes[i];
      max_label = i;
    }
  }

  return max_label;

}



void digitrec(const DigitType training_set[18000 * 4],
                 const DigitType test_set[2000 * 4],
                 LabelType results[2000])
{
#pragma HLS INTERFACE m_axi port=training_set offset=slave bundle=gmem0
#pragma HLS INTERFACE m_axi port=test_set offset=slave bundle=gmem1
#pragma HLS INTERFACE m_axi port=results offset=slave bundle=gmem2
#pragma HLS INTERFACE s_axilite port= training_set bundle=control
#pragma HLS INTERFACE s_axilite port= test_set bundle=control
#pragma HLS INTERFACE s_axilite port= results bundle=control
#pragma HLS INTERFACE s_axilite port= return bundle=control


  int dists[3];
  int labels[3];


  TEST_LOOP: for (int t = 0; t < 2000; ++t)
  {

    SET_KNN_SET: for ( int i = 0; i < 3; ++i )
    {

      dists[i] = 256;
      labels[i] = 0;
    }


    TRAINING_LOOP : for ( int i = 0; i < 18000; ++i )
      update_knn(&training_set[i * 4], &test_set[t * 4], dists, labels, i / 1800);


    LabelType max_vote = knn_vote(labels);
    results[t] = max_vote;

  }

}
