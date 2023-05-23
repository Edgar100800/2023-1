module counter_tb;
    reg up = 0;
    reg down = 0;
    reg reset = 0;

    wire[3:0] u;
    wire[3:0] t;
    wire[3:0] h;

    counter uut(up,down,reset,u,t,h);

    initial begin
        reset = 1;
        #1
        reset = 0;
        #1

        for (integer i = 0; i < 100; i = i + 1) begin
            up = 1;
            #1
            up = 0;
            #1;
        end

        for (integer i = 0; i < 100; i = i + 1) begin
            down = 1;
            #1
            down = 0;
            #1;
        end
    end

endmodule