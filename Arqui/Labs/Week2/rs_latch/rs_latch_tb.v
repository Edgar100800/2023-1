`timescale 1ns / 1ps
module rs_latch_behavioral_tb;
    reg r,s,clk;
    wire q,qn;

    rs_latch_behavioral rs_test(.r(r),.s(s),.q(q),.qn(qn),.clk(clk));

  	initial begin
  		clk=0;
        forever #1 clk=~clk;
    end

    initial begin
    r=1; s=1;
    #1 
    $display ("r=%b, s=%b, q=%b, qn=%b",r,s,q,qn);
    #1
    r=0; s=1;
    #1 
    $display ("r=%b, s=%b, q=%b, qn=%b",r,s,q,qn);
    #1
    r=1; s=1; 
    #1
    $display ("r=%b, s=%b, q=%b, qn=%b",r,s,q,qn);
    #1
    r=1; s=0; 
    #1
    $display ("r=%b, s=%b, q=%b, qn=%b",r,s,q,qn);
    #1
    r=0; s=0; 
    #1
    $display ("r=%b, s=%b, q=%b, qn=%b",r,s,q,qn);
    #1     
    $finish;
  end

  initial begin
    $dumpfile("rs_latch_behavioral.vcd");
    $dumpvars;
  end
endmodule