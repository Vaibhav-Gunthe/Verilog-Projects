`timescale 1ns / 1ps


module full_subtractor (
    input A,
    input B,
    input C,
    output Diff,
    output Bout
);
    assign Diff = A ^ B ^ C;
    assign Bout = (~A & B) | (~(A ^ B) & C);
endmodule
