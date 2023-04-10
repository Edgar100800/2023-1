`include "cmosnand.v"
`include "cmosnot.v"


module and_gate(f,a,b);

    input a,b;
    output f;

    wire w_1;

    cmosnand and1(w_1,a,b);
    cmosnot not1(f,w_1);
    
    
endmodule