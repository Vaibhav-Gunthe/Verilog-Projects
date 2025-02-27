`timescale 1ns / 1ps

module tb_XOR;
reg a,b;
wire Y;
 
XOR_Gate dut(
.a(a),
.b(b),
.Y(Y)
);
initial begin

$dumpfile("dump.vcd");
$dumpvars(0,tb_XOR);

$monitor("time=%0t: a=%b b=%b Y=%b",$time,a,b,Y);

a=0; b=0; #10;
a=0; b=1; #10;
a=1; b=0; #10;
a=1; b=1; #10;

$finish;

end
endmodule
