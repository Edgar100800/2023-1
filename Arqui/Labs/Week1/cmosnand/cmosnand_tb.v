
`timescale 1ns/1ns

module cmosnand_tb;
    reg a,b;
    wire y;

    cmosnand cmos_nand(y,a,b);
    initial begin
        a = 0; b = 0;
        #1 a = 0; b = 1;
        #1 a = 1; b = 0;
        #1 a = 1; b = 1;
        #1 $finish;
    end

    initial begin
        $monitor("%2d:\ta = %b\tb = %b\ty = %b",$time,a,b,y);
    end

    initial begin
    $dumpfile("cmosnand.vcd"); // this creates a waveform file after simulation
    $dumpvars;
    end

endmodule