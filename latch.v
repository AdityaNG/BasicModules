// SR Latch
module sr_latch(input wire s, r, output wire q, not_q);
	assign q = ~(r | not_q);
    assign not_q = ~(s | q);
endmodule

// D latch
module d_latch(input wire d, clk, output wire q, not_q);
	wire r,s;
    assign r = clk & (~d);
    assign s = clk & d;
    sr_latch sr_1(s, r, q, not_q);
endmodule