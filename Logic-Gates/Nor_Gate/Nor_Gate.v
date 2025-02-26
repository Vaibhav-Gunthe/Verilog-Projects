`timescale 1ns / 1ps


module Nor_Gate(
input a,b,
output wire Y
    );
assign Y=~(a|b);
endmodule


