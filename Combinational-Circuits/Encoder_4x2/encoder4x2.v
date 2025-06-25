`timescale 1ns / 1ps

module encoder4x2(
input [3:0]I,
output [1:0]Y
    );
    assign Y[0] =I[1] | I[3];
    assign Y[1] =I[2] | I[3];
endmodule
