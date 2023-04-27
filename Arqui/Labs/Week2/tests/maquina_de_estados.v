module mi_fsm(input clk, input bit, output reg [1:0] estado_salida);
  
  parameter ESTADO_0 = 2'b00, ESTADO_1 = 2'b01, ESTADO_2 = 2'b10, ESTADO_3 = 2'b11;
  
  always @ (posedge clk) begin
    case (estado_salida)
      ESTADO_0: begin
        if (bit == 1) begin
          estado_salida <= ESTADO_1;
        end else begin
          estado_salida <= ESTADO_0;
        end
      end
      
      ESTADO_1: begin
        if (bit == 1) begin
          estado_salida <= ESTADO_2;
        end else begin
          estado_salida <= ESTADO_0;
        end
      end
      
      ESTADO_2: begin
        if (bit == 1) begin
          estado_salida <= ESTADO_3;
        end else begin
          estado_salida <= ESTADO_0;
        end
      end
      
      ESTADO_3: begin
        estado_salida <= ESTADO_0;
      end
      
      default: estado_salida <= ESTADO_0;
    endcase
  end
  
endmodule
