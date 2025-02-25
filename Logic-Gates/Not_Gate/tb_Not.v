`timescale 1ns / 1ps


module tb_Not;
reg a;
wire Y;
Not_Gate dut(
.a(a),
.Y(Y)
);
initial begin
$dumpfile("dump.vcd");
$dumpvars(0,tb_Not);

$monitor("Time=%0t: a=%b Y=%b", $time,a,Y);

a=0; #10;
a=1; #10;

$finish;

end
endmodule
