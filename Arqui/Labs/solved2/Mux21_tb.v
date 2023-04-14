`include "mux_21_bh.v"
`timescale 1ns/1ns
module  mux_21_tb;
wire out;
reg d0, d1, s;
mux21_bh name(.y(out), .d0(d0), .d1(d1), .s(s));
initial
begin
$dumpfile("mux21_bh_tb.vcd");
$dumpvars(0,mux_21_tb);
d0=1'b0;
d1=1'b0;
s=1'b0;
#100 $finish;
end
always #40 d0=~d0; // always #40 s2=~s0
always #20 d1=~d1; // always #20 s1=~s1
always #10 s=~s; // always #10 s0=~s0
always@(d0 or d1 or s)
$monitor("At time = %t, Output = %d", $time, out);
endmodule;