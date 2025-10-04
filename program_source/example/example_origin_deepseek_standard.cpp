// Converted from example_origin.c to .cpp by convert_and_transform_with_deepseek.py

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

//                    +--proc-->[ II=4 ]--+
//                   /                     \
// in -->[demux II=1]                       [mux II=1]---> out
//                   \                     /
//                    +--proc-->[ II=4 ]--+

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

#include <queue>

//--------------------------------------------
template <int ID>
void proc(std::queue<int>& in, std::queue<int>& out) {
    for (int i = 0; i < 25; i++) {
        int var = in.front();
        in.pop();
        out.push(var);
    }
}

//--------------------------------------------
void mux(std::queue<int> (&inter)[2], std::queue<int>& mux_output) {
    int mux_sel = 0;
    for (int i = 0; i < 50; i++) {
        int var = inter[mux_sel].front();
        inter[mux_sel].pop();
        mux_output.push(var);
        mux_sel = (mux_sel == 0) ? 1 : 0;
    }
}

//--------------------------------------------
void demux(std::queue<int>& in, std::queue<int> (&inter)[2]) {
    int demux_sel = 0;
    for (int i = 0; i < 50; i++) {
        int var = in.front();
        in.pop();
        inter[demux_sel].push(var);
        demux_sel = (demux_sel == 0) ? 1 : 0;
    }
}

void example(std::queue<int>& in, std::queue<int>& out) {
    std::queue<int> inter[2];
    std::queue<int> mux_in[2];

    demux(in, inter);
    proc<0>(inter[0], mux_in[0]);
    proc<1>(inter[1], mux_in[1]);
    mux(mux_in, out);
}
