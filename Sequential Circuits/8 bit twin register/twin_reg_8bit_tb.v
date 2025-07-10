`timescale 1ns / 1ps


module twin_reg_8bit_tb;
reg clk,rst;
reg [7:0]d1,d2;
wire[7:0]q1,q2;

twin_reg_8bit dut(clk,rst,d1,d2,q1,q2);
always #5 clk=~clk;
initial begin
clk=0; d1=0; d2=0; rst=1;
$display("time clk rst d1 d2 q1 q2");
$monitor("%0t clk=%b rst=%b d1=%b d2=%b q1=%b q2=%b",$time,clk,rst,d1,d2,q1,q2);
#10 rst=0; 
        #10 d1 = 8'b00000000; d2 = 8'b00000000;
        #10 d1 = 8'b00000000; d2 = 8'b00000001;
        #10 d1 = 8'b00000001; d2 = 8'b00000000;
        #10 d1 = 8'b00000001; d2 = 8'b00000001;
$finish;

end
endmodule
