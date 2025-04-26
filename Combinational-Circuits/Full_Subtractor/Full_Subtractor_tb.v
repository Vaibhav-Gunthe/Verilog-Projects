`timescale 1ns / 1ps

module Full_Subtractor_tb;
reg A,B,C;
wire Diff,Bout;

full_subtractor dut(
.A(A),
.B(B),
.C(C),
.Diff(Diff),
.Bout(Bout)
);

initial begin

$dumpfile("dump.vcd");
$dumpvars(0,Full_Subtractor_tb);

$monitor("time=%0t: A=%b B=%b C=%b Diff=%b Bout=%b",$time, A,B,C,Diff,Bout);

A=0; B=0; C=0; #10;
A=0; B=0; C=1; #10;
A=0; B=1; C=0; #10;
A=0; B=1; C=1; #10;
A=1; B=0; C=0; #10;
A=1; B=0; C=1; #10;
A=1; B=1; C=0; #10;
A=1; B=1; C=1; #10;

$finish;
end
endmodule