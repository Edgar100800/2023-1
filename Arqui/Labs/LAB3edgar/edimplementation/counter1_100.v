module counter(
  input clk,   // Reloj de entrada
  input rst,   // Señal de reset de entrada
  input btn_up,
  input btn_down,
  output reg [6:0] count  // Salida de contador de 7 bits
);

  // Definir los estados del contador (0-99)
  parameter [6:0] COUNT_MIN = 7'b0000001;  // Valor mínimo del contador
  parameter [6:0] COUNT_MAX = 7'b0000011;  // Valor máximo del contador
  
  // Declarar los estados del contador
  reg [6:0] state = COUNT_MIN;  // Estado actual del contador
  
  // Función de transición
  always @(negedge rst) begin
      state <= COUNT_MIN;
  end

  always @(posedge clk) begin
    // if (negedge) begin  // Si la señal de reset está activa, reiniciar el contador a 1
    //   state <= COUNT_MIN;
    // end
    if (btn_up && (state != COUNT_MAX)) begin  // Si se presiona el botón de incremento y no se alcanza el valor máximo, incrementar el contador en 1
      state <= state + 1;
    end
    else if (btn_up && (state == COUNT_MAX)) begin  // Si se presiona el botón de incremento y se alcanza el valor máximo, el contador va al menor estado
      state <= COUNT_MIN;
    end
    else if (btn_down && (state != COUNT_MIN)) begin  // Si se presiona el botón de decremento y no se alcanza el valor mínimo, decrementar el contador en 1
      state <= state - 1;
    end
    else if (btn_down && (state == COUNT_MIN)) begin  // Si se presiona el botón de decremento y se alcanza el valor mínimo, el contador va al mayor estado
      state <= COUNT_MAX;
    end
    else begin  // Si no hay cambios, mantener el estado actual
      state <= state;
    end

  end

  // Asignar la salida del contador al estado actual
  always @(state) begin
    count <= state;
  end
  
endmodule
