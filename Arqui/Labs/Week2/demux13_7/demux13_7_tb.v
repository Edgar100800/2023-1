`timescale 1ps/1ps

module demux13_7_tb;
    
    // inputs
    reg [12:0] in;
    reg [2:0] s;

    // outputs
    wire [6:0][12:0] out ;

    localparam timelapse = 2;

    demux13_7 test1(.in(in), .sel(s), .out(out));

    initial begin
        
        in = 13'b1101010111111;
        s = 3'b000;
        #timelapse;
        
        $display("out = %b", out);

        in = 13'b1101010111111;
        s = 3'b100;
        #timelapse;
        
        $display("out = %b", out);

        $finish;
    end

    initial begin
    $dumpfile("demux13_7.vcd");
    $dumpvars;
    end 

endmodule