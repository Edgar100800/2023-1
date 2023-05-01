module demux13_7(out0,out1,out2,out3,out4,out5,out6,select,in_value);
output reg [12:0] out0, out1, out2, out3, out4, out5, out6;
input [2:0]select;
input [12:0]in_value;

always @(*)
    begin 
        out0=0;out1=0;out2=0;out3=0;out4=0;out5=0;out6=0;
        case(select)
            3'd0: out0=in_value;
            3'd1: out1=in_value;
            3'd2: out2=in_value;
            3'd3: out3=in_value;
            3'd4: out4=in_value;
            3'd5: out5=in_value;
            3'd6: out6=in_value;
        endcase
    end
endmodule