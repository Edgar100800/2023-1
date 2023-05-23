module counter(input wire up, input wire down, input wire reset,
               output wire[3:0] units, output wire[3:0] tens, output wire[3:0] hundreds);

    wire clk;
    wire who;

    signal_generator siggen(.up(up),.down(down),.inc(who),.clk(clk));
    automaton autom(clk,reset,who,hundreds,tens,units);

endmodule