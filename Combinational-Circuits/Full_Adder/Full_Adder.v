`timescale 1ns / 1ps

module Full_Adder(
input a,b,c,
output Sum,Carry
    );
 assign Sum= a^b^c;
 assign Carry = a&b | b&c | a&c;
endmodule
