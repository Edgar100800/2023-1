module demux13_7(
    input [12:0] in,
    input [2:0] sel,
    output reg [6:0][12:0] out
);

    always @( * )
    begin

        if (sel == 3'b000) 
        begin
            out[0] = {in[0], in[1], in[2], in[3], in[4], in[5], in[6], in[7], in[8], in[9], in[10], in[11], in[12]};
        end

        else if (sel == 3'b001) 
        begin
            out[1] = {in[0], in[1], in[2], in[3], in[4], in[5], in[6], in[7], in[8], in[9], in[10], in[11], in[12]};
        end
        
        else if (sel == 3'b010) 
        begin
            out[2] = {in[0], in[1], in[2], in[3], in[4], in[5], in[6], in[7], in[8], in[9], in[10], in[11], in[12]};
        end
        
        else if (sel == 3'b011) 
        begin
            out[3] = {in[0], in[1], in[2], in[3], in[4], in[5], in[6], in[7], in[8], in[9], in[10], in[11], in[12]};
        end
        
        else if (sel == 3'b100) 
        begin
            out[4] = {in[0], in[1], in[2], in[3], in[4], in[5], in[6], in[7], in[8], in[9], in[10], in[11], in[12]};
        end

        else if (sel == 3'b101) 
        begin
            out[5] = {in[0], in[1], in[2], in[3], in[4], in[5], in[6], in[7], in[8], in[9], in[10], in[11], in[12]};
        end
        
        else if (sel == 3'b110) 
        begin
            out[6] = {in[0], in[1], in[2], in[3], in[4], in[5], in[6], in[7], in[8], in[9], in[10], in[11], in[12]};
        end
    end

endmodule