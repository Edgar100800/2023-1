// `timescale 1ns/1ns

// module counter1_100_tb;

//     reg clk;   // Reloj de entrada
//     reg rst;   // Señal de reset de entrada
//     reg btn_up;
//     reg btn_down;
//     wire reg[6:0] count;  // Salida de contador de 7 bits

//     counter test1(.clk(clk), .rst(rst), .btn_up(btn_up), .btn_down(btn_down), .count(count));

//     initial begin
//         clk = 0;
//         forever #1 clk=~clk;
//     end

//     initial begin
//         btn_up = 1;
//         btn_down = 0;
//         #1
//         $display ("btnUP=%b, btnDOWN=%b, count=%b",btn_up,btn_down,count);
//         #1
//         $display ("btnUP=%b, btnDOWN=%b, count=%b",btn_up,btn_down,count);
//         #1
//         $display ("btnUP=%b, btnDOWN=%b, count=%b",btn_up,btn_down,count);
//         #1
//         $display ("btnUP=%b, btnDOWN=%b, count=%b",btn_up,btn_down,count);
//         #1
//         $display ("btnUP=%b, btnDOWN=%b, count=%b",btn_up,btn_down,count);
//         #1
//         $display ("btnUP=%b, btnDOWN=%b, count=%b",btn_up,btn_down,count);
//         #1
//         $display ("btnUP=%b, btnDOWN=%b, count=%b",btn_up,btn_down,count);
//         #1
//         $display ("btnUP=%b, btnDOWN=%b, count=%b",btn_up,btn_down,count);
        
//         $finish;
//     end

//     initial begin
//         $dumpfile("counter1_100.vcd");
//         $dumpvars;
//     end 
// endmodule





`timescale 1ns/1ns

module counter1_100_tb;

    reg clk;   // Reloj de entrada
    reg rst;   // Señal de reset de entrada
    reg btn_up;
    reg btn_down;
    wire reg[6:0] count;  // Salida de contador de 7 bits

    counter test1(.clk(clk), .rst(rst), .btn_up(btn_up), .btn_down(btn_down), .count(count));

    initial begin
        clk = 0;
        forever #1 clk=~clk;
    end

    initial begin
        btn_up = 1;
        btn_down = 0;
        #1
        $display ("btnUP=%b, btnDOWN=%b, count=%b",btn_up,btn_down,count);
        #1
        $display ("btnUP=%b, btnDOWN=%b, count=%b",btn_up,btn_down,count);
        #1
        $display ("btnUP=%b, btnDOWN=%b, count=%b",btn_up,btn_down,count);
        #1
        $display ("btnUP=%b, btnDOWN=%b, count=%b",btn_up,btn_down,count);
        #1
        $display ("btnUP=%b, btnDOWN=%b, count=%b",btn_up,btn_down,count);
        #1
        $display ("btnUP=%b, btnDOWN=%b, count=%b",btn_up,btn_down,count);
        #1
        $display ("btnUP=%b, btnDOWN=%b, count=%b",btn_up,btn_down,count);
        #1
        $display ("btnUP=%b, btnDOWN=%b, count=%b",btn_up,btn_down,count);
        
        $finish;
    end

    initial begin
        $dumpfile("counter1_100.vcd");
        $dumpvars;
    end 
endmodule
