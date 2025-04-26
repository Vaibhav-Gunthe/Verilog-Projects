`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/23/2025 11:11:17 PM
// Design Name: 
// Module Name: Mux2x1_tb


module Mux2x1_tb;
reg I0,I1,Sel;
wire Y;

Mux2x1 dut (
.I0(I0),
.I1(I1),
.Sel(Sel),
.Y(Y)
);

initial begin

$dumpfile("dump.vcd");
$dumpvars(0,Mux2x1_tb);

$monitor("t=%0t  I0=%b I1=%b Sel=%b | Y=%b",
                 $time, I0, I1, Sel, Y);
        I0=0; I1=0; Sel=0; #10;
        I0=0; I1=0; Sel=1; #10;
        I0=0; I1=1; Sel=0; #10;
        I0=0; I1=1; Sel=1; #10;
        I0=1; I1=0; Sel=0; #10;
        I0=1; I1=0; Sel=1; #10;
        I0=1; I1=1; Sel=0; #10;
        I0=1; I1=1; Sel=1; #10;
        
$finish;
end
endmodule

