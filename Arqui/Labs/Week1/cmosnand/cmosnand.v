
module cmosnand (f, a, b);

    input a,b;
    output f;
    
    supply1 vdd;
    supply0 gnd;

    wire w_n;

    pmos p1(f, vdd, a);
    pmos p2(f, vdd, b);

    nmos n1(f, w_n, a);
    nmos n2(w_n, gnd, b);
endmodule