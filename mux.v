// 2:1 MUX
module mux_2_1(input wire i0, i1, j, output wire o);
	assign o = i0&(~j) | i1&j;
endmodule