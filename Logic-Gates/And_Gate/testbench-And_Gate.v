`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2025 10:11:45 AM
// Design Name: 
// Module Name: testbench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module testbench;
reg a,b;
wire Y;

And_Gate uut(
.a(a),
.b(b),
.Y(Y)
);

initial begin
$dumpfile("dump.vcd");
$dumpvars(0,testbench);

$monitor("Time=%0t: a=%b b=%b Y=%b",$time,a,b,Y);

a=0; b=0; #10;
a=0; b=1; #10;
a=1; b=0; #10;
a=1; b=1; #10;

$finish;
end
endmodule

