`timescale 1ns / 1ps


module alu_8bit_tb;
reg [7:0]a,b;
reg [3:0]opcode;
wire [7:0]x,y;

alu_8bit dut(a,b,opcode,x,y);

integer k;
    initial begin 
    $monitor("time=%0t a=%b b=%b opcode=%b x=%b y=%b",$time,a,b,opcode,x,y);
       
       a=8'b01010101;
       b=8'b11000011;
                for (k = 0; k < 16; k = k + 1) begin
                    opcode = k [3:0] ;
                    #10;
        end
        $finish;
    end

endmodule
