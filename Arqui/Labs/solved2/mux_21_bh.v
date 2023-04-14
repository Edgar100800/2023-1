
module mux21_bh(y , s , d0, d1);
input s,d0,d1;
output y;
/*if(s==1b0) begin
    y=d0;
end
else begin
    y=d1;
    // y=d0 or d1;
end*/

assign y=(s==1'b0)?d0:d1;

endmodule
