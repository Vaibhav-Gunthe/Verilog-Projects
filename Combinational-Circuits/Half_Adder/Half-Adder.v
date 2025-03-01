`timescale 1ns / 1ps

module Half_Adder(
input a,b,
output wire Sum,Carry
    );
assign Sum=a^b;
assign Carry =a&b; 
endmodule
