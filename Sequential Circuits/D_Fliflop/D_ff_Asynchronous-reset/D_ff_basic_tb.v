`timescale 1ns / 1ps


module D_ff_basic_tb;
reg d,clk,rst;
wire q;

D_ff_basic dut(d,clk,rst,q);
always #5 clk=~clk;

initial begin
d=0; clk=0; rst=1;
$display("time d clk rst q ");
$monitor("time d clk rst q",$time,d,clk,rst,q);

#10 rst=0;
  #10 d = 1;
  #10 d = 0;
  #10 d = 1;
  #10 d = 0;
  #10;

$finish;
end
endmodule
