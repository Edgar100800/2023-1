`include "Demux12.v"
`timescale 1ns/1ns 

module demux12_tb;

  reg inp_, se_;
  wire y1_, y2_;

  Demux12 algo(.y1(y1_), .y2(y2_), .inp(inp_), .se(se_));

  initial begin
    $dumpfile("demux_tb.vcd");
    $dumpvars(0, demux12_tb);

    inp_ = 0;
    se_ = 0;
    #1
    inp_ = 0;
    se_ = 1;
    #1
    inp_ = 1;
    se_ = 0;
    #1
    inp_ = 1;
    se_ = 1;
    #10
    $finish;
  end

endmodule


/*
module tb_mux();
reg [7:0]in;
reg [2:0]s;
wire y;
mux m1(y,s,in);
initial
begin
in=8'b10110110;
s[0]=1'b0;
s[1]=1'b0;
s[2]=1'b0;
end
always #40  s[2]=~s[2];
always #20  s[1]=~s[1];
always #10  s[0]=~s[0];
initial
begin
#200 $finish;
end
endmodule */