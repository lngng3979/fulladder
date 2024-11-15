module fulladder (
  input wire a,
  input wire  b,
  input  wire c_in,
  output reg sum,
  output reg c_out
);
always@(*) begin
 sum = a ^ b ^ c_in;
 c_out = (a & b) | (b & c_in) | (a & c_in);
 end
endmodule
