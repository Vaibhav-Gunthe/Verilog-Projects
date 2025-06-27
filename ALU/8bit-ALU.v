`timescale 1ns / 1ps

module alu_8bit(
input [7:0]a,b,
input[3:0]opcode,
output reg [7:0]x,y
    );
    always@(a,b,opcode)
    begin
    x=8'b0;
    y=8'b0;
    case(opcode)
    4'b0000 : x= {7'b0,&a};
    4'b0001 : x= {7'b0,|a};
    4'b0010 : x= {7'b0,^a};
    4'b0011 : x= a&b;
    4'b0100 : x= a|b;
    4'b0101 : x= a^b;
    4'b0110 : {y[0],x}= a+b;
    4'b0111 : x= a-b;
    4'b1000 : x= {7'b0,a>b};
    4'b1001 : x= {7'b0,a<b};
    4'b1010 : x[0]= !a;
    4'b1011 : x[0]= a==b;
    4'b1100 : {y,x}= a*b;
    4'b1101 : {y,x}= a>>b;
    4'b1110 : {y,x}= a<<b;
    4'b1111 :  x = ~a;
    default : $display("error");
    endcase
    end
endmodule
