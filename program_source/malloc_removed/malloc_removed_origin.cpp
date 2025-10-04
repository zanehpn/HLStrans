// Converted from malloc_removed_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: combined.c ----

/*
 * Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
 * Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#ifndef _MALLOC_REMOVED_H_
#define _MALLOC_REMOVED_H_

// Missing include: #include <stdio.h>
#define N 32

typedef int din_t;
typedef long long dout_t;
typedef int dsel_t;

dout_t malloc_removed(din_t din[N], dsel_t width);

#endif
// Missing include: #include <stdlib.h>
//#define NO_SYNTH

dout_t malloc_removed(din_t din[N], dsel_t width) {

#ifdef NO_SYNTH
  long long *out_accum = malloc(sizeof(long long));
  int *array_local = malloc(64 * sizeof(int));
#else
  long long _out_accum;
  long long *out_accum = &_out_accum;
  int _array_local[64];
  int *array_local = &_array_local[0];
#endif
  int i, j;

LOOP_SHIFT:
  for (i = 0; i < N - 1; i++) {

    if (i < width)
      *(array_local + i) = din[i];
    else
      *(array_local + i) = din[i] >> 2;
  }

  *out_accum = 0;
LOOP_ACCUM:
  for (j = 0; j < N - 1; j++) {

    *out_accum += *(array_local + j);
  }

  return *out_accum;
}
