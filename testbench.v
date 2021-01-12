`timescale 1 ns / 100 ps
`define TESTVECS 8

module tb;
  reg clk, reset;
  reg d;
  wire q, not_q;
  reg test_vecs [0:(`TESTVECS-1)];
  integer i;
  initial begin $dumpfile("BasicModules.vcd"); $dumpvars(0,tb); end
  initial begin reset = 1'b1; #12.5 reset = 1'b0; end
  initial clk = 1'b0; always #5 clk =~ clk;
  initial begin
  	//test_vecs[0][33:32] = 2'b00; test_vecs[0][31:8] = 16'h00;test_vecs[0][15:0] = 16'h00;
    
    test_vecs[0] = 1'b0;
    test_vecs[1] = 1'b0;
    test_vecs[2] = 1'b1;
    test_vecs[3] = 1'b1;
    test_vecs[4] = 1'b1;
    test_vecs[5] = 1'b0;
    test_vecs[6] = 1'b1;
    test_vecs[7] = 1'b0;
    
  end
  initial {d} = 0;
  d_flip_flop dfl_0 (d, clk, q, not_q);
  initial begin
    #6 for(i=0;i<`TESTVECS;i=i+1)
      begin #10 d=test_vecs[i]; end
    #100 $finish;
  end
endmodule