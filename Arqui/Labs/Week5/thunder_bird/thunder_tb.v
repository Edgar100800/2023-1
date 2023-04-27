`timescale 1ns / 1ns
module ME_tb;


    reg clk;
    reg [1:0]direction;
    wire [5:0]estado_salida;

    m_e test1(.clk(clk),.direction(direction),.estado_salida(estado_salida));

    initial begin
        clk = 0;
        forever #1 clk=~clk;
    end

    initial begin 
        direction = 2'b01;
        #1
        $display ("direction=%b, e_salida=%b",direction,estado_salida);
        #1

        // direction = 2'b01;
        #1
        $display ("direction=%b, e_salida=%b",direction,estado_salida);
        #1
        direction = 2'b00;

        // direction = 2'b01;
        #1
        $display ("direction=%b, e_salida=%b",direction,estado_salida);
        #1
        // direction = 2'b01;
        #1
        $display ("direction=%b, e_salida=%b",direction,estado_salida);
        #1

        #1
        $display ("direction=%b, e_salida=%b",direction,estado_salida);
        #1

        direction = 2'b01;

        #1
        $display ("direction=%b, e_salida=%b",direction,estado_salida);
        #1

        #1
        $display ("direction=%b, e_salida=%b",direction,estado_salida);
        #1

        #1
        $display ("direction=%b, e_salida=%b",direction,estado_salida);
        #1

        #1
        $display ("direction=%b, e_salida=%b",direction,estado_salida);
        #1

        direction = 2'b10;

        #1
        $display ("direction=%b, e_salida=%b",direction,estado_salida);
        #1

        #1
        $display ("direction=%b, e_salida=%b",direction,estado_salida);
        #1

        #1
        $display ("direction=%b, e_salida=%b",direction,estado_salida);
        #1

        #1
        $display ("direction=%b, e_salida=%b",direction,estado_salida);
        #1

        #1
        $display ("direction=%b, e_salida=%b",direction,estado_salida);
        #1

        #1
        $display ("direction=%b, e_salida=%b",direction,estado_salida);
        #1

        #1
        $display ("direction=%b, e_salida=%b",direction,estado_salida);
        #1

        $finish;

    end


    initial begin
    $dumpfile("m_e.vcd");
    $dumpvars;
    end 

endmodule
