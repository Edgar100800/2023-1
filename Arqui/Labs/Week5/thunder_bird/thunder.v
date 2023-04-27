module m_e(clk, direction, estado_salida);

    input clk;
    input [1:0]direction;
    output reg [5:0]estado_salida;

    // reg [5:0] ESTADO_PREV;

    parameter ESTADO_0 = 6'b000_000,
    ESTADO_1 = 6'b000_100,
    ESTADO_2 = 6'b000_110,
    ESTADO_3 = 6'b000_111,
    ESTADO_4 = 6'b001_000,
    ESTADO_5 = 6'b011_000,
    ESTADO_6 = 6'b111_000;


    always @ (posedge clk) begin

    case(estado_salida)    
        ESTADO_0:begin
            if (direction == 2'b01)begin
                estado_salida <= ESTADO_1;
            end else if (direction == 2'b10)begin
                estado_salida <= ESTADO_4;
            end else begin
                estado_salida <=  ESTADO_0;
            end    
        end

        ESTADO_1:begin
            estado_salida <= ESTADO_2;
            
        end

        ESTADO_2:begin
            estado_salida <= ESTADO_3;
        end

        ESTADO_3:begin
            estado_salida <= ESTADO_0;
        end

        ESTADO_4:begin
            estado_salida <= ESTADO_5;
        end

        ESTADO_5:begin
            estado_salida <= ESTADO_6;
        end

        ESTADO_6:begin
            estado_salida <= ESTADO_0;
        end

        default: estado_salida <= ESTADO_0;
    endcase
        
    end

endmodule