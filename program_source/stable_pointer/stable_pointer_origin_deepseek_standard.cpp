#include <queue>
#include <stdexcept>

template <typename T>
class SimpleStream {
public:
    SimpleStream() = default;

    // Read one element from the stream (throws if empty)
    void read(T& v) {
        if (q.empty()) {
            throw std::runtime_error("SimpleStream::read on empty stream");
        }
        v = q.front();
        q.pop();
    }

    // Write one element to the stream
    void write(const T& v) { q.push(v); }

    // Check if the stream is empty
    bool empty() const { return q.empty(); }

    // Get current size
    std::size_t size() const { return q.size(); }

private:
    std::queue<T> q;
};

void process_23(SimpleStream<int>& in, SimpleStream<int>& out) {
    static int state = 0;
    static int val;

    in.read(val);
    val = val * 23;
    out.write(val);
}

void process_11(SimpleStream<int>& in, SimpleStream<int>& out) {
    static int state = 0;
    static int val;

    in.read(val);
    val = val * 11;
    out.write(val);
}

void write_process(SimpleStream<int>& in, SimpleStream<int>& out, int* mem) {
    int val;
    static int addr = 0;

    in.read(val);
    if (addr >= 32)
        addr = 0;
    mem[addr] = val;
    addr++;
    val = mem[addr - 1];
    out.write(val);
}

void stable_pointer(int* mem, SimpleStream<int>& in, SimpleStream<int>& out) {
    SimpleStream<int> int_fifo;
    SimpleStream<int> int_fifo2;

    while (!in.empty()) {
        process_23(in, int_fifo);
        process_11(int_fifo, int_fifo2);
        write_process(int_fifo2, out, mem);
    }
}
