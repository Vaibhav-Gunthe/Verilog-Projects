`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////


module Ripple_Carryadder_tb;
reg [3:0]A,B;
reg Cin;
wire [3:0]sum;
wire Cout;

Ripple_carryadder dut(
.A(A),
.B(B),
.Cin(Cin),
.sum(sum),
.Cout(Cout) );

initial begin 

$dumpfile("waveform.vcd");
$dumpvars(0,Ripple_Carryadder_tb);
$display("Time\tA\tB\tCin\t|\tsum\tCout");
$display("------------------------------------------------");

        A = 4'b0000; B = 4'b0001; Cin = 0; #10;
        $display("%0dns\t%b\t%b\t%b\t|\t%b\t%b", $time, A, B, Cin, sum, Cout);

        A = 4'b0011; B = 4'b0101; Cin = 0; #10;
        $display("%0dns\t%b\t%b\t%b\t|\t%b\t%b", $time, A, B, Cin, sum, Cout);

        A = 4'b1111; B = 4'b0001; Cin = 1; #10;
        $display("%0dns\t%b\t%b\t%b\t|\t%b\t%b", $time, A, B, Cin, sum, Cout);

$finish;

end
endmodule
