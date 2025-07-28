set clock_constraint { \
    name clk \
    module sparse_matrix_multiply_HLS \
    port ap_clk \
    period 5 \
    uncertainty 1.35 \
}

set all_path {}

set false_path {}

