module Demux12(y1,y2 , inp,se);
input inp, se;
output y1,y2;
assign y1 = (inp & ~se );
assign y2 = (inp & se );
endmodule