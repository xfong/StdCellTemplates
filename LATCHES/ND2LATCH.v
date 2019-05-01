module ND2LATCH(Q, QB, A0, A1, EN, ENB, VDD, VSS );
  input A0, A1, EN, ENB;
  output Q;
  output reg QB;
  inout VDD, VSS;

  always @ (*)
  begin
    case({EN,ENB})
      2'b01 : ;
      2'b10 : QB=~(A0 && A1);
      default : QB=Z;
  end

  assign Q=~QB;

endmodule
