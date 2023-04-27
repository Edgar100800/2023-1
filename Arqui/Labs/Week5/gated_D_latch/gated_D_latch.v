module gated_D_latch(WE, D, Q, Qn);

    input WE;
    input D;
    output reg Q,Qn;

    always @ (*)
    begin
        if (WE == 1) begin
            Q <= D;
            Qn <= ~D;
        end
    end
endmodule