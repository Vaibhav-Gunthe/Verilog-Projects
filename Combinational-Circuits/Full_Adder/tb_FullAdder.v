`timescale 1ns / 1ps

module tb_FullAdder;
reg a,b,c;
wire Sum,Carry;

Full_Adder dut(
.a(a),
.b(b),
.c(c),
.Sum(Sum),
.Carry(Carry)
);

initial begin

$dumpfile("dump.vcd");
$dumpvars(0,tb_FullAdder);

$monitor("time=%0t: a=%b b=%b c=%b Sum=%b Carry=%b",$time, Sum,Carry,a,b,c);

a=0; b=0; c=0; #10;
a=0; b=0; c=1; #10;
a=0; b=1; c=0; #10;
a=0; b=1; c=1; #10;
a=1; b=0; c=0; #10;
a=1; b=0; c=1; #10;
a=1; b=1; c=0; #10;
a=1; b=1; c=1; #10;

$finish;
end
endmodule
