module SRLATCH(Q, QB, S, R, VDD, VSS );
  input S, R;
  output reg Q;
  output QB;
  inout VDD, VSS;

  always @ (S, R, VDD, VSS)
  begin
    case({S,R})
      2'b01 : Q = VSS ;
      2'b10 : Q = VDD ;
      2'b11 : Q = QB ;
      default : ;
    endcase
  end

  assign QB = ~Q ;

endmodule
