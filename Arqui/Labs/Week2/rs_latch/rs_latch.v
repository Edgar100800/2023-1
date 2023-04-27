
module rs_latch_behavioral(r,s,q,qn,clk);

  input r,s,clk;
  output reg q,qn;
  
  always @(posedge clk)
  begin
    if (r == 0 && s == 0)
    begin
      q <= q;
      qn <= qn;
    end

    else if (r == 0 && s == 1)
    begin
      q <= 1;
      qn <= 0;
    end
    else if (r == 1 && s == 0)
    begin
      q <= 0;
      qn <= 1;
    end

    else if (r == 1 && s == 1)
    begin
      q <= 1'bZ;
      qn <= 1'bZ;
    end
  end
  
//   always @(posedge clk)
//     qn <= ~q;

endmodule


    
    