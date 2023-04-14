
module mux21_(output [15:0] y, input s, input [15:0] d0, input [15:0] d1);
  assign y = (s == 1'b0) ? d0 : d1;
endmodule

/*module mux21_([15:0]y , s , [15:0]d0, [15:0]d1);
input s , [15:0]d0, [15:0]d1;   
output [15:0]y;
assign y=(s==1'b0)?d0:d1;
endmodule */

module mux161(output  [15:0] y, input [3:0] s, input [15:0] d0, input [15:0] d1, input [15:0] d2, input [15:0] d3, input [15:0] d4, input [15:0] d5, input [15:0] d6, input [15:0] d7, input [15:0] d8, input [15:0] d9, input [15:0] d10, input [15:0] d11, input [15:0] d12, input [15:0] d13, input [15:0] d14, input [15:0] d15);
  
  wire [15:0] a1, a2, a3, a4, a5, a6, a7, a8;
  wire [15:0] b1, b2, b3, b4;
  wire [15:0] c1, c2;
  
  mux21_ A1(a1, s[0], d0, d1);
  mux21_ A2(a2, s[0], d2, d3);
  mux21_ A3(a3, s[0], d4, d5);
  mux21_ A4(a4, s[0], d6, d7);
  mux21_ A5(a5, s[0], d8, d9);
  mux21_ A6(a6, s[0], d10, d11);
  mux21_ A7(a7, s[0], d12, d13);
  mux21_ A8(a8, s[0], d14, d15);
  
  mux21_ B1(b1, s[1], a1, a2);
  mux21_ B2(b2, s[1], a3, a4);
  mux21_ B3(b3, s[1], a5, a6);
  mux21_ B4(b4, s[1], a7, a8);
  
  mux21_ C1(c1, s[2], b1, b2);
  mux21_ C2(c2, s[2], b3, b4);
  
  mux21_ D1(y, s[3], c1, c2);
  
endmodule
