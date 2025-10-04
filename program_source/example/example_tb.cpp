// contents of example_tb.cpp
#include <iostream>
#include <vector>
#include <cassert>

// Include the source to bring in function definitions (no main defined there)
#include "example.cpp"

int main() {
    // Test 1: Top-level example() should output the same sequence it receives (demux -> proc -> mux)
    {
        hls::stream<int> in;
        hls::stream<int> out;
        std::vector<int> input;

        // Prepare 50 inputs with a non-trivial pattern
        for (int i = 0; i < 50; ++i) {
            int val = i * 3 + 7;
            input.push_back(val);
            in.write(val);
        }

        // Run the top function
        example(in, out);

        // Validate that outputs match the inputs in order
        for (int i = 0; i < 50; ++i) {
            assert(!out.empty());
            int v = out.read();
            if (v != input[i]) {
                std::cerr << "Test 1 mismatch at index " << i << ": expected " << input[i] << " got " << v << std::endl;
                return 1;
            }
        }
        assert(out.empty());
        std::cout << "Test 1 passed: example() preserves order and values." << std::endl;
    }

    // Test 2: Standalone proc<0>() should forward exactly 25 items unchanged
    {
        hls::stream<int, 16> pin;
        hls::stream<int, 16> pout;

        // Prepare exactly 25 values (proc reads 25)
        for (int i = 0; i < 25; ++i) {
            pin.write(1000 + i);
        }

        // Run the processing stage
        proc<0>(pin, pout);

        // Validate outputs
        for (int i = 0; i < 25; ++i) {
            assert(!pout.empty());
            int v = pout.read();
            if (v != 1000 + i) {
                std::cerr << "Test 2 mismatch at index " << i << ": expected " << (1000 + i) << " got " << v << std::endl;
                return 1;
            }
        }
        assert(pout.empty());
        std::cout << "Test 2 passed: proc<0>() forwards 25 values unchanged." << std::endl;
    }

    // Test 3: demux() followed by mux() should return to original order/values
    {
        hls::stream<int> din;
        hls::stream<int, 16> inter[2];
        hls::stream<int> mout;
        std::vector<int> input2;

        // Prepare 50 inputs with an alternating sign pattern to expose ordering issues
        for (int i = 0; i < 50; ++i) {
            int val = (i % 2 == 0) ? i : -i;
            input2.push_back(val);
            din.write(val);
        }

        // Demultiplex into two streams, then multiplex back
        demux(din, inter);
        mux(inter, mout);

        // Validate outputs match inputs in order
        for (int i = 0; i < 50; ++i) {
            assert(!mout.empty());
            int v = mout.read();
            if (v != input2[i]) {
                std::cerr << "Test 3 mismatch at index " << i << ": expected " << input2[i] << " got " << v << std::endl;
                return 1;
            }
        }
        assert(mout.empty());
        std::cout << "Test 3 passed: demux() + mux() preserves order and values." << std::endl;
    }

    std::cout << "All tests passed." << std::endl;
    return 0;
}