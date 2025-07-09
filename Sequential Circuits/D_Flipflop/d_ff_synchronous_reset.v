`timescale 1ns / 1ps

module D_ff_synchronous_reset(
input d,clk,rst,
output reg q
    );
    always @(posedge clk )
    if(rst)
    q<=0;
    else 
    q<=d;
    
endmodule