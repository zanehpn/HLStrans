// Converted from DigitRec_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: digitrec.cpp ----
#ifndef __TYPEDEFS_H__
#define __TYPEDEFS_H__

#include <cstdint>
#include <array>

// dataset information
#define NUM_TRAINING 18000
#define CLASS_SIZE 1800
#define NUM_TEST 2000
#define DIGIT_WIDTH 4

// typedefs
typedef unsigned long long DigitType;
typedef unsigned char      LabelType;

// Standard replacement for 256-bit wide type
typedef std::array<uint64_t, 4> WholeDigitType;

// parameters
#define K_CONST 3
#define PAR_FACTOR 40

#endif
