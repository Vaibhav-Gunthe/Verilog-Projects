`timescale 1ns / 1ps

module barrel_shifter8bit_tb;
    reg [7:0] in;
    reg [2:0] sel;
    reg n;
    wire [7:0] out;

    barrel_shifter_8bit dut(in, n, sel, out);

    initial begin
        $display("Time\tin\t\tsel\tn\tout");
        $monitor("%0t\t%08b\t%0d\t%b\t%08b", $time, in, sel, n, out);

        // Test 1
        in = 8'b00001111; sel = 3; n = 0; // Left shift by 3
        #10;

        // Test 2
        in = 8'b01010101; sel = 2; n = 0; // Left shift by 2
        #10;

        // Test 3
        in = 8'b01010101; sel = 2; n = 1; // Right shift by 2
        #10;

        // Test 4
        in = 8'b01010101; sel = 1; n = 0; // Left shift by 1
        #10;

        // Test 5
        in = 8'b01010101; sel = 0; n = 0; // No shift
        #10;

        $finish;
    end
endmodule
