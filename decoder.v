// 1:2 DECODER
module decoder_1_2(input wire j, output wire o0, o1);
	assign o0 = ~j;
    assign o1 = j;
endmodule
