`timescale 1ns / 1ns
module mi_maquina_estados_tb;

    reg clk, bit;
    wire [1:0]estado_salida;

mi_fsm test1(.clk(clk), .bit(bit), .estado_salida(estado_salida));

initial begin
    clk = 0;
    forever #1 clk=~clk;
    end

initial begin
    bit = 1;
    #1
    $display ("bit=%b, salida=%b",bit,estado_salida);
    #1
    bit = 1;
    #1
    $display ("bit=%b, salida=%b",bit,estado_salida);
    #1
    bit = 0;
    #1
    $display ("bit=%b, salida=%b",bit,estado_salida);
    #1
    bit = 1;
    #1
    $display ("bit=%b, salida=%b",bit,estado_salida);
    #1
    bit = 1;
    #1
    $display ("bit=%b, salida=%b",bit,estado_salida);
    #1
    bit = 1;
    #1
    $display ("bit=%b, salida=%b",bit,estado_salida);
    #1
    bit = 1;
    #1
    $display ("bit=%b, salida=%b",bit,estado_salida);
    #1
    bit = 1;
    #1
    $display ("bit=%b, salida=%b",bit,estado_salida);
    #1
    
    $finish;
    end

initial begin
    $dumpfile("maquina_de_estados.vcd");
    $dumpvars;
end
endmodule