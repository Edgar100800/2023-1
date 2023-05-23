module signal_generator(input wire up,
                        input wire down,
                        output reg inc = 0,
                        output reg clk = 0);

    // on falling edge of button up, inc = 1, clk -> 1 -> 0
    // on falling edge of button down, inc = 0, clk -> 1 -> 0
    always @(negedge up) begin
        inc = 1;
        clk = 1;
        #1
        clk = 0;
        inc = 0;
    end
    always@(negedge down) begin
        inc = 0;
        clk = 1;
        #1
        clk = 0;
        inc = 0;
    end
endmodule