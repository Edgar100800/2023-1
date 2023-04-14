module N_mux21_v2(y, s, d0 , d1);

input d0, d1, s;
output y;

wire w1,w2,ws;
not (ws,s );
and (w1,d0,ws);
and (w2,d1,s);
or (y, w1,w2);

endmodule





