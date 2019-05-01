module TBUF(Y, A, EN, ENB, VDD, VSS );
  input A, EN, ENB;
  output Y;
  inout VDD, VSS;

  always @ (*)
  begin
    case({EN,ENB})
      2'b10 : Y=A;
      default : Y=Z;
    endcase
  end
endmodule
