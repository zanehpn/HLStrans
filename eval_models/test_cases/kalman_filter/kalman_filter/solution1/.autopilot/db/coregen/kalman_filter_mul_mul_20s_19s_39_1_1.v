
`timescale 1 ns / 1 ps

  module kalman_filter_mul_mul_20s_19s_39_1_1_DSP48_1(a, b, p);
input signed [20 - 1 : 0] a;
input signed [19 - 1 : 0] b;
output signed [39 - 1 : 0] p;

assign p = a * b;

endmodule
`timescale 1 ns / 1 ps
module kalman_filter_mul_mul_20s_19s_39_1_1(
    din0,
    din1,
    dout);

parameter ID = 32'd1;
parameter NUM_STAGE = 32'd1;
parameter din0_WIDTH = 32'd1;
parameter din1_WIDTH = 32'd1;
parameter dout_WIDTH = 32'd1;
input[din0_WIDTH - 1:0] din0;
input[din1_WIDTH - 1:0] din1;
output[dout_WIDTH - 1:0] dout;



kalman_filter_mul_mul_20s_19s_39_1_1_DSP48_1 kalman_filter_mul_mul_20s_19s_39_1_1_DSP48_1_U(
    .a( din0 ),
    .b( din1 ),
    .p( dout ));

endmodule

