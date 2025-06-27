`timescale 1ns / 1ps


module barrel_shifter_8bit(
input [7:0]in,
input n,
input [2:0]sel,
output reg[7:0]out
    );
    always@(*)
    begin 
    if(n==0)     //n==0 left shift
    begin
    out=in<<sel;
    end
    else         //n==1 right shift
    begin
    out=in>>sel;
    end
    end
endmodule
