`timescale 1ns / 1ps

module XNOR_Gate(a,b,Y);
input a,b;
output Y;
assign Y= a ~^ b;
endmodule
