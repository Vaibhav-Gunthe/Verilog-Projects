`timescale 1ns / 1ps

module tb_HalfAdder;
reg a,b;
wire Sum,Carry;

Half_Adder dut(
.a(a),
.b(b),
.Sum(Sum),
.Carry(Carry)
);

initial begin

$dumpfile("dump.vcd");
$dumpvars(0,tb_HalfAdder);

$monitor("time=%0t: a=%b b=%b Sum=%b Carry=%b",$time,a,b,Sum,Carry);

a=0; b=0; #10;
a=0; b=1; #10;
a=1; b=0; #10;
a=1; b=1; #10;

$finish;
end
 
endmodule
