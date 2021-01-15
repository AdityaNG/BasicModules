`include "latch.v"
// D Flip Flop
module d_flip_flop(input wire d, clk, output wire q, not_q);
	wire t, not_t;
    d_latch dl1(d, ~clk, t, not_t);
    d_latch dl2(t, clk, q, not_q);
endmodule
