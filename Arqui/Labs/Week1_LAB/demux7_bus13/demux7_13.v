module demux_7_1(A, sel, out);

  input [12:0] A;
  input [2:0] sel;
  output [12:0] out [0:6];

  assign out[0] = (sel == 3'b000) ? A : 13'b0;
  assign out[1] = (sel == 3'b001) ? A : 13'b0;
  assign out[2] = (sel == 3'b010) ? A : 13'b0;
  assign out[3] = (sel == 3'b011) ? A : 13'b0;
  assign out[4] = (sel == 3'b100) ? A : 13'b0;
  assign out[5] = (sel == 3'b101) ? A : 13'b0;
  assign out[6] = (sel == 3'b110) ? A : 13'b0;

endmodule
