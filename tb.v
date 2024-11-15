`timescale 1ns/1ps
module tb_fulladd;
	// 1. Declare testbench variables
   reg  a;
   reg  b;
   reg  c_in;
   wire sum;
   wire c_out;
   integer i;


	// 2. Instantiate the design and connect to testbench variables
   fulladder uut ( .a (a),
                  .b (b),
                  .c_in (c_in),
                  .c_out (c_out),
                  .sum (sum));
   initial 
      begin
      $dumpfile("fulladder.vcd");
      $dumpvars(0,tb_fulladd);
      a <=1 ;
      b<=0;
      c_in<=1;
      #10;
      for (i = 0; i < 20; i = i+1) begin
         #20 a <= $random;
             b <= $random;
             c_in <= $random;
      end
      $finish();
   end
endmodule
