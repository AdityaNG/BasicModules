// Full Adder
module full_adder(input wire a, b, c_in, output wire s, c_out);
	assign s = a ^ b ^ c_in;
    assign c_out = a&b | b&c_in | a&c_in;
endmodule

// Half Adder
module half_adder(input wire a, b, output wire s, c_out);
	assign s = a ^ b;
    assign c_out = a&b;
endmodule

// 2:1 MUX
module mux_2_1(input wire i0, i1, j, output wire o);
	assign o = i0&(~j) | i1&j;
endmodule

// 1:2 DEMUX
module demux_1_2(input wire i, j, output wire o0, o1);
	assign o0 = i&(~j);
    assign o1 = i&j;
endmodule

// 1:2 DECODER
module decoder_1_2(input wire j, output wire o0, o1);
	assign o0 = ~j;
    assign o1 = j;
endmodule

// SR Latch
module sr_latch(input wire s, r, output wire q, not_q);
	assign q = ~(r | not_q);
    assign not_q = ~(s | q);
endmodule

// D Flip Flop
module d_flip_flop(input wire d, clk, output wire q, not_q);
	wire r,s;
    assign r = clk & (~d);
    assign s = clk & d;
    sr_latch sr_1(s, r, q, not_q);
endmodule