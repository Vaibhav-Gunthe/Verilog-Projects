`timescale 1ns / 1ps

module twin_reg_8bit(
input clk,rst,
input [7:0]d1,
input [7:0]d2,
output reg[7:0]q1,
output reg[7:0]q2 );

always @(posedge clk)
if (rst)begin
q1 <=0;
q2 <=0;
end
else begin 
q1<=d1;
q2<=d2;
end
endmodule
