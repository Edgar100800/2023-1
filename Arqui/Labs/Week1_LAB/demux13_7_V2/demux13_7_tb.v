`timescale 1ns / 1ns

module demux13_7_tb;

    wire [12:0] out0, out1, out2, out3, out4, out5, out6;
    reg [2:0]select;
    reg [12:0]in_value;

    demux13_7 demux_test(.out0(out0),.out1(out1),.out2(out2),.out3(out3),.out4(out4),.out5(out5),.out6(out6),.select(select),.in_value(in_value));

    initial begin;
    in_value=13'b0111000100011; select = 3'b000;
    $display ("input=%b, select=%b, out=%b",in_value,select,out0);
    #1
    in_value=13'b0001000100011; select = 3'b001;
    $display ("input=%b, select=%b, out=%b",in_value,select,out1);
    #1
    in_value=13'b0001000100010; select = 3'b010;
    $display ("input=%b, select=%b, out=%b",in_value,select,out2);
    #1
    in_value=13'b0000000000001; select = 3'b011;
    $display ("input=%b, select=%b, out=%b",in_value,select,out3);
    #1
    in_value=13'b1000000000001; select = 3'b100;
    $display ("input=%b, select=%b, out=%b",in_value,select,out4);
    #1
    in_value=13'b0001111100011; select = 3'b101;
    $display ("input=%b, select=%b, out=%b",in_value,select,out5);
    #1
    in_value=13'b0001000111111; select = 3'b110;
    $display ("input=%b, select=%b, out=%b",in_value,select,out6);
    #1
    $finish;
    end

    initial begin
    $dumpfile("demux13_8.vcd");
    $dumpvars;
    end

endmodule