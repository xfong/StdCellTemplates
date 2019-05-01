module IMUX4(Y, D0, D1, D2, D3, Sel0, Sel1, Sel0B, Sel1B, VDD, VSS );
  input D0, D1, D2, D3, Sel0, Sel0B, Sel1, Sel1B;
  output Y;
  inout VDD, VSS;

  always
    begin
      case({Sel1,Sel1B,Sel0,Sel0B})
        2'b0101 : Y=D0;
        2'b0110 : Y=D1;
        2'b1001 : Y=D2;
        2'b1010 : Y=D3;
        default : Y=Z;
      endcase
    end
endmodule
