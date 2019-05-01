module DLATCH(Q, QB, D, EN, ENB, VDD, VSS );
  input D, EN, ENB;
  output Q;
  output reg QB;
  inout VDD, VSS;

  always @ (*)
  begin
    case({EN,ENB})
      2'b01 : ;
      2'b10 : QB=~D;
      default : QB=Z;
  end

  assign Q=~QB;

endmodule
