
module demux_7(A,select, out);

    input A;
    input [2:0]select;
    output [7:0]out;
    assign out[0] = 1'bz;
    assign out[1] = (select == 3'b001) ? A : 1'b0;
    assign out[2] = (select == 3'b010) ? A : 1'b0;
    assign out[3] = (select == 3'b011) ? A : 1'b0;
    assign out[4] = (select == 3'b100) ? A : 1'b0;
    assign out[5] = (select == 3'b101) ? A : 1'b0;
    assign out[6] = (select == 3'b110) ? A : 1'b0;
    assign out[7] = (select == 3'b111) ? A : 1'b0;



endmodule