`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////


module Not_Gate(a,Y);
input a;
output wire Y;
assign Y=~a;
endmodule
