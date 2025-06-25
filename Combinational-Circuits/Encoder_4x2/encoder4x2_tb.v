`timescale 1ns / 1ps


module encoder4x2_tb;
reg [3:0]I;
wire [1:0]Y;
encoder4x2 dut(I,Y);
integer i;
initial begin
$display("time I Y");
for (i=0;i<4;i=i+1)
begin
I=4'b0001<<i;
#10;
$display("%0t %b %b",$time,I,Y);
end
$finish;
end
endmodule
