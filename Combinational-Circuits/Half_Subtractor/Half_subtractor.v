`timescale 1ns / 1ps

module Half_subtractor(
input a,b,
output Diff,Borrow
    );
assign Diff= a ^ b;
assign Borrow = ~a & b;
endmodule
