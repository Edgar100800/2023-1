`timescale 1ns / 1ns

module gated_D_latch_tb;
    reg WE;
    reg D;
    wire Q;
    wire Qn;

    gated_D_latch test(.WE(WE),.D(D),.Q(Q),.Qn(Qn));

    initial begin
        WE=1; D=1;
        #1 
        $display ("WE=%b, D=%b, Q=%b, QN=%b",WE,D,Q,Qn);
        #1
        WE=1; D=0;
        #1 
        $display ("WE=%b, D=%b, Q=%b, QN=%b",WE,D,Q,Qn);
        #1
        WE=0; D=1;
        #1 
        $display ("WE=%b, D=%b, Q=%b, QN=%b",WE,D,Q,Qn);
        #1
        WE=0; D=0;
        #1 
        $display ("WE=%b, D=%b, Q=%b, QN=%b",WE,D,Q,Qn);
        #1
        WE=1; D=1;
        #1 
        $display ("WE=%b, D=%b, Q=%b, QN=%b",WE,D,Q,Qn);
        #1
        WE=0; D=0;
        #1 
        $display ("WE=%b, D=%b, Q=%b, QN=%b",WE,D,Q,Qn);
        #1
        WE=0; D=1;
        #1 
        $display ("WE=%b, D=%b, Q=%b, QN=%b",WE,D,Q,Qn);
        #1
        WE=0; D=0;
        #1 
        $finish;
    end


    initial begin
    $dumpfile("gated_D_latch.vcd");
    $dumpvars;
    end
endmodule