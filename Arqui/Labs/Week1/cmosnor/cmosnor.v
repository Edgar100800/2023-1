
module cmosnor(f,a,b);

    input a,b;

    output f;

    supply1 vdd;
    supply0 gnd;

    wire w_p;

    nmos n1(f, gnd, a);
    nmos n2(f, gnd, b);
    
    pmos p1(w_p, vdd, a);
    pmos p2(f, w_p, b);


endmodule