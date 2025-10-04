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

#ifndef _CPP_TEMPLATE_H_
#define _CPP_TEMPLATE_H_

#include <cstdio>

void cpp_template(int inp, int* out);

template <int K> void func_with_static(int inp, int* dout) {
    // Use inline off pragma to avoid automatic inlining
#pragma HLS INLINE off
    static int acc = 0;
    acc += inp;
    *dout = acc;
}

#endif

void cpp_template(int inp, int* out) {
#pragma HLS ARRAY_PARTITION variable=out type=cyclic dim=1 factor=1
    int out0, out1, out2, out3, out4;

    // Use templated functions to get multiple instances
    // of the same function.
    func_with_static<1>(inp, &out0);
    func_with_static<2>(inp, &out1);
    func_with_static<3>(inp, &out2);
    func_with_static<4>(inp, &out3);
    func_with_static<5>(inp, &out4);

    *out += out0 + out1 + out2 + out3 + out4;
}
