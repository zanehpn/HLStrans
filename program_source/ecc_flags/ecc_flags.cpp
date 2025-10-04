// Converted from ecc_flags.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: combined.cpp ----
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

#define N 10

using din_t = int;

void ecc_flags(din_t in1[N], din_t in2[N], const din_t Iter, din_t output[N]);
void sfunc2(din_t vec1[N], const din_t sIter, din_t ovec[N]) {
    for (int i = 0; i < N; ++i)
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        ovec[i] = vec1[i] / sIter;
}

void sfunc1(const din_t cIter, din_t a[N], din_t b[N], din_t res[N]) {
    int i;
    din_t res1[N];
#pragma HLS ARRAY_RESHAPE variable = res1 dim = 1 factor = 2 block
#pragma HLS BIND_STORAGE variable = res1 type = ram_s2p impl = uram_ecc
    for (i = 0; i < N; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=16
        res1[i] = b[i] + a[i];
    }
    sfunc2(res1, cIter, res);
}

void sfunc3(din_t inrun[N], din_t oval[N]) {
    int i;
    din_t calc = 0;
    for (i = 0; i < N; ++i) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        calc = (inrun[i] * inrun[i]) / (i + 1);
        oval[i] = calc;
    }
}

void ecc_flags(din_t in1[N], din_t in2[N], const din_t Iter, din_t output[N]) {
#pragma HLS ARRAY_PARTITION variable=output type=cyclic dim=1 factor=2
#pragma HLS ARRAY_PARTITION variable=in2 type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=in1 type=cyclic dim=1 factor=1
    din_t auxbuffer1[N];

    sfunc1(Iter, in1, in2, auxbuffer1);
    sfunc3(auxbuffer1, output);

    return;
}
