module automaton(input wire clock,
               input wire reset,
               input wire who,
               output wire [3:0] hundreds,
               output wire [3:0] tens,
               output wire [3:0] units
               );
    reg [6:0] state;

    output_logic output_l(.current(state),.who(who),.digit1(units),.digit2(tens),.digit3(hundreds));

    always @(reset)
    begin
        state = 0;
    end

    always @(posedge clock)
    begin
        case (who)
            1: 
            begin
                //incrementar
                if (state == 100)
                    state = state; // mantenerlo
                else
                     state = state + 1;
            end
            default: 
            begin
                //decrementar
                if (state == 0)
                    state = state; // mantenerlo
                else
                    state = state - 1;
            end
        endcase
    end



endmodule