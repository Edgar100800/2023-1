`timescale 1ns / 1ps

module demux_7_tb;

    reg [12:0]A;
    reg [2:0]select;
    wire [7:0]out;

    demux_7 demux_test(.A(A),.select(select),.out(out));

    initial begin;
    #1
    A=13'b0001000100011; select = 3'b001;
    $display ("A=%b, select=%b, out=%b",A,select,out);
    #1
    A=13'b0001000100010; select = 3'b010;
    $display ("A=%b, select=%b, out=%b",A,select,out);
    #1
    A=13'b0000000000001; select = 3'b011;
    $display ("A=%b, select=%b, out=%b",A,select,out);
    #1
    A=13'b1000000000001; select = 3'b101;
    $display ("A=%b, select=%b, out=%b",A,select,out);
    #1
    $finish;
    end

    initial begin
    $dumpfile("demux7.vcd");
    $dumpvars;
    end

endmodule
