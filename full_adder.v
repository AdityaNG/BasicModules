// Full Adder
module full_adder(input wire a, b, c_in, output wire s, c_out);
	assign s = a ^ b ^ c_in;
    assign c_out = a&b | b&c_in | a&c_in;
endmodule