// Half Adder
module half_adder(input wire a, b, output wire s, c_out);
	assign s = a ^ b;
    assign c_out = a&b;
endmodule