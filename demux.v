// 1:2 DEMUX
module demux_1_2(input wire i, j, output wire o0, o1);
	assign o0 = i&(~j);
    assign o1 = i&j;
endmodule
