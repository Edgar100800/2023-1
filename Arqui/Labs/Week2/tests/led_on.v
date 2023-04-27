module mi_maquina_estados(input boton, output led, input clk);

  parameter ESPERANDO = 2'b00, ENCENDIDO = 2'b01;
  reg [1:0] estado_actual, estado_siguiente;
  
  always @ (posedge clk) begin
    estado_actual <= estado_siguiente;
    
    case (estado_actual)
      ESPERANDO: begin
        if (boton == 1) begin
          estado_siguiente <= ENCENDIDO;
        end else begin
          estado_siguiente <= ESPERANDO;
        end
      end
      
      ENCENDIDO: begin
        if (boton == 0) begin
          estado_siguiente <= ESPERANDO;
        end else begin
          estado_siguiente <= ENCENDIDO;
        end
      end
      
      default: estado_siguiente <= ESPERANDO;
    endcase
  end
  
  assign led = (estado_actual == ENCENDIDO) ? 1 : 0;
  
endmodule
