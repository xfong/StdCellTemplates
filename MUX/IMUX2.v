module IMUX2(Y, D0, D1, Sel, SelB, VDD, VSS );
  input D0, D1, Sel, SelB;
  output Y;
  inout VDD, VSS;

  always
    begin
      case({Sel,SelB})
        2'b10 : Y=D1;
        2'b01 : Y=D0;
        default : Y=Z;
      endcase
    end
endmodule
