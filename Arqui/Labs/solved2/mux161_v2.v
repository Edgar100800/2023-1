module mux21_(output y, input s, input d0, input d1);
  assign y = (s == 1'b0) ? d0 : d1;

endmodule

