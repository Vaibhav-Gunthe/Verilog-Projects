`timescale 1ns / 1ps

module Ripple_carryadder(
input[3:0]A,B,
input Cin,
output[3:0]sum,
output Cout
    );
assign{Cout,sum} = A+B+Cin;
endmodule
