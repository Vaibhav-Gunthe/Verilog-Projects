`timescale 1ns / 1ps

module Half_subtractor_tb();
reg a,b;
wire Diff,Borrow;

Half_subtractor dut(
.a(a),
.b(b),
.Diff(Diff),
.Borrow(Borrow)
);

initial begin
$dumpfile("dump.vcd");
$dumpvars(0,Half_subtractor_tb);

$monitor("time=%0t: a=%b b=%b Diff=%b Borrow=%b",$time,a,b,Diff,Borrow); 

a=0; b=0; #10;
a=0; b=1; #10;
a=1; b=0; #10;
a=1; b=1; #10;

$finish;

end
endmodule
