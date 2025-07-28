bug_table = {
    "HLS_207-3325": {
        "ERROR": "use of overloaded operator '*' is ambiguous",
        "how_to_correct": (
            "This ERROR occurs when the HLS compiler sees multiple valid '*' overloads because one operand is a float "
            "and the other is a custom fixed-point type (such as ap_fixed<16,8>, ap_unit<512>). To resolve this, explicitly "
            "cast one operand so that both have the same type."
        ),
        "Example": {
            "ERROR code": (
                "data_t a = ...;  // a is defined as ap_fixed<16,8>\n"
                "float b = 3.14;\n"
                "auto result = a * b;  // ERROR: ambiguous operator '*'"
            ),
            "right code": (
                "data_t a = ...;  // a is defined as ap_fixed<16,8>\n"
                "float b = 3.14;\n"
                "auto result = a * (data_t)(b);  // Correct: turn b into the same type as a"
            )
        }
    },
    "HLS_207-3295": {
        "ERROR": "Loop bound not determinable",
        "how_to_correct": (
            "HLS requires loop trip counts to be either constant or explicitly specified using a pragma. When a loop "
            "bound is variable (not known at compile time), the tool cannot perform proper scheduling or unrolling. "
            "Ensure that loop bounds are compile-time constants or use the HLS pragma 'loop_tripcount' to provide an "
            "estimate."
        ),
        "Example": {
            "ERROR code": (
                "for (int i = 0; i < N; i++) { ... }  // N is not a compile-time constant, causing the ERROR"
            ),
            "right code": (
                "const int N_const = 64;  // Use a compile-time constant\n"
                "for (int i = 0; i < N_const; i++) { ... }\n"
                "// or alternatively:\n"
                "#pragma HLS loop_tripcount min=64 max=64\n"
                "for (int i = 0; i < N; i++) { ... }"
            )
        }
    },
    "HLS_207-3600": {
        "ERROR": "Function call not synthesizable",
        "how_to_correct": (
            "This ERROR is raised when a function call within your HLS code uses features not supported by synthesis "
            "(for example, dynamic memory allocation, recursion, or system calls). To fix this, replace the unsupported "
            "features with synthesizable alternatives (such as using fixed-size arrays instead of dynamic allocation)."
        ),
        "Example": {
            "ERROR code": (
                "void foo() {\n"
                "    int* ptr = new int[10];  // ERROR: dynamic memory allocation not supported\n"
                "    // ...\n"
                "}"
            ),
            "right code": (
                "void foo() {\n"
                "    int ptr[10];  // Correct: fixed-size array used instead\n"
                "    // ...\n"
                "}"
            )
        }
    },
    "HLS_207-3350": {
        "ERROR": "Array partitioning directive failed",
        "how_to_correct": (
            "This ERROR occurs if the ARRAY_PARTITION pragma is applied on an array that cannot be partitioned as "
            "requested—often due to array size, dependency issues, or an unsuitable partitioning factor. Check the array "
            "size and access patterns, and adjust the partitioning type (cyclic, block, or complete) or factor accordingly."
        ),
        "Example": {
            "ERROR code": (
                "int arr[10];\n"
                "#pragma HLS ARRAY_PARTITION variable=arr cyclic factor=3\n"
                "// ... use arr in a way that violates the partitioning assumptions"
            ),
            "right code": (
                "int arr[10];\n"
                "#pragma HLS ARRAY_PARTITION variable=arr complete\n"
                "// or adjust the factor and access pattern to match the design requirements"
            )
        }
    },
    "HLS_207-3410": {
        "ERROR": "use of overloaded operator '<<' is ambiguous",
        "how_to_correct": (
            "Streaming operators (<<) can become ambiguous when used with custom types (such as ap_fixed). To resolve the "
            "ambiguity, provide a dedicated overload for your type or explicitly convert the value (e.g., via a to_string() "
            "method) when streaming."
        ),
        "Example": {
            "ERROR code": (
                "data_t a = ...;  // a is defined as ap_fixed<16,8>\n"
                "std::cout << a;  // ERROR: ambiguous operator '<<'"
            ),
            "right code": (
                "data_t a = ...;  // a is defined as ap_fixed<16,8>\n"
                "std::cout << a.to_string();  // Correct: explicit conversion for output"
            )
        }
    },
    "HLS_200-977": {
        "ERROR": (
            "Internal stream 'w_stream' (or 'oldw_stream') failed dataflow checking: it must be produced and consumed exactly once"
        ),
        "how_to_correct": (
            "In HLS dataflow designs, every internal stream must have exactly one producer and one consumer. "
            "This ERROR occurs when a stream is either produced or consumed multiple times or not at all. To resolve the "
            "ERROR, ensure that each stream is written by exactly one process and read by exactly one process. If you need "
            "to share data with multiple consumers, duplicate the stream using a proper stream-splitting method so that "
            "each duplicate is consumed exactly once."
        ),
        "Example": {
            "ERROR code": (
                "hls::stream<data_t> w_stream;\n"
                "hls::stream<data_t> oldw_stream;\n"
                "producer(w_stream);   // Producer writes to w_stream\n"
                "consumer1(w_stream);  // First consumer reads from w_stream\n"
                "consumer2(w_stream);  // Second consumer also reads from w_stream (causes ERROR)"
            ),
            "right code": (
                "hls::stream<data_t> w_stream;\n"
                "producer(w_stream);   // Single producer writes to w_stream\n"
                "consumer(w_stream);   // Exactly one consumer reads from w_stream\n"
                "\n"
                "// If multiple consumers are needed, duplicate the stream:\n"
                "hls::stream<data_t> w_stream_dup1, w_stream_dup2;\n"
                "producer(w_stream);  // Produce into original stream\n"
                "stream_duplication(w_stream, w_stream_dup1, w_stream_dup2); // Custom function to duplicate the stream\n"
                "consumer1(w_stream_dup1);\n"
                "consumer2(w_stream_dup2);"
            )
        }
    },
    "HLS_200-970": {
        "ERROR": (
            "Internal stream 'w_stream' (or 'oldw_stream') failed dataflow checking: it must be produced and consumed exactly once"
        ),
        "how_to_correct": (
            "In HLS dataflow designs, every internal stream must have exactly one producer and one consumer. "
            "This ERROR occurs when a stream is either produced or consumed multiple times or not at all. To resolve the "
            "ERROR, ensure that each stream is written by exactly one process and read by exactly one process. If you need "
            "to share data with multiple consumers, duplicate the stream using a proper stream-splitting method so that "
            "each duplicate is consumed exactly once."
        ),
        "Example": {
            "ERROR code": (
                "hls::stream<data_t> w_stream;\n"
                "hls::stream<data_t> oldw_stream;\n"
                "producer(w_stream);   // Producer writes to w_stream\n"
                "consumer1(w_stream);  // First consumer reads from w_stream\n"
                "consumer2(w_stream);  // Second consumer also reads from w_stream (causes ERROR)"
            ),
            "right code": (
                "hls::stream<data_t> w_stream;\n"
                "producer(w_stream);   // Single producer writes to w_stream\n"
                "consumer(w_stream);   // Exactly one consumer reads from w_stream\n"
                "\n"
                "// If multiple consumers are needed, duplicate the stream:\n"
                "hls::stream<data_t> w_stream_dup1, w_stream_dup2;\n"
                "producer(w_stream);  // Produce into original stream\n"
                "stream_duplication(w_stream, w_stream_dup1, w_stream_dup2); // Custom function to duplicate the stream\n"
                "consumer1(w_stream_dup1);\n"
                "consumer2(w_stream_dup2);"
            )
        }
    },

    "HLS_207-5504": {
        "ERROR": "'#pragma HLS' is only allowed in function scope",
        "how_to_correct": (
            "This ERROR indicates that an HLS directive (e.g., #pragma HLS pipeline) is placed outside of a function's scope. "
            "HLS pragmas must be used inside the body of a function (or loop) to affect synthesis. To resolve the ERROR, "
            "move the pragma inside the function where the intended optimization should be applied."
        ),
        "Example": {
            "ERROR code": (
                "// Incorrect: pragma used at global scope\n"
                "#pragma HLS pipeline\n"
                "int add(int a, int b) {\n"
                "    return a + b;\n"
                "}\n"
            ),
            "right code": (
                "int add(int a, int b) {\n"
                "    #pragma HLS pipeline  // Correct: pragma inside function scope\n"
                "    return a + b;\n"
                "}\n"
            )
        }
    },

"HLS_214-194": {
    "ERROR": "Undefined function dynamic memory allocation functions",
    "how_to_correct": (
        "This ERROR indicates that the dynamic memory allocation 'calloc' is not recognized by the Vivado HLS compiler. "
        "since dynamic memory allocation (like malloc, calloc, free) is generally disallowed in hardware synthesis. "
        "To resolve this ERROR, you need to replace the dynamic memory allocation with static or fixed-size allocation. "
        "This means pre-allocating arrays with known sizes at compile time."
    ),
    "Example": {
        "ERROR code": (
            "int *visited = (int*)calloc(N, sizeof(int)); // Not synthesizable\n"
            "if (!visited) return;"
        ),
        "right code": (
            "#define N 1024\n"
            "int visited[MAX_N];  // Static allocation, size must be known at compile time\n"
            "for (int i = 0; i < N; i++) visited[i] = 0;"
        )
    }
},
"HLS_214-139": {
    "ERROR": "Recursive function call is not supported",
    "how_to_correct": (
        "This ERROR indicates that Vivado HLS does not support recursive functions. "
        "Recursion relies on dynamic call stacks and stack frames, which are not synthesizable in hardware. "
        "To resolve this ERROR, you must rewrite the recursive function into an equivalent iterative form."
    ),
    "Example": {
        "ERROR code": (
            "unsigned long factorial(unsigned n) {\n"
            "    if (n == 0) return 1;\n"
            "    return n * factorial(n - 1);  // Recursive call not supported\n"
            "}"
        ),
        "right code": (
            "unsigned long factorial(unsigned n) {\n"
            "    unsigned long result = 1;\n"
            "    for (unsigned i = 2; i <= n; ++i) {\n"
            "        result *= i;\n"
            "    }\n"
            "    return result;\n"
            "}"
        )
    }
}
}

