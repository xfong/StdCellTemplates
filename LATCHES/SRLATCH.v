module SRLATCH(Q, QB, S, R, VDD, VSS );
  input S, R;
  output reg Q;
  output QB;
  inout VDD, VSS;

  always @ (S, R)
  begin
    case({S,R})
      2'b01 : Q=0;
      2'b10 : Q=1;
      2'b11 : Q=QB;
      default : Q=Q;
  end

  assign QB=~Q;

endmodule
