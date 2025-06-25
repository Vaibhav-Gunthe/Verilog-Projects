`timescale 1ns / 1ps

module mux4x1_tb;
    reg [3:0] I;
    reg [1:0] Sel;
    wire Y;

    mux4x1 dut(I, Sel, Y);

    reg expected;
    integer k;

    initial begin
        $display("Time   I    Sel Y expected");
        $display("----------------------------");
        $dumpfile("waveform.vcd");
        $dumpvars(0, mux4x1_tb);

        for (k = 0; k < 16; k = k + 1) begin
            I   = k[5:2];         
            Sel = k[1:0];         
            

            expected = I[Sel];
            #9;
            $display("%4t  %b   %b   %b   %b", $time, I, Sel, Y, expected);
        end

        #10;
        $finish;
    end
endmodule
