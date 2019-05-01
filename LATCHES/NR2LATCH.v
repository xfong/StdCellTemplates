module NR2LATCH(Q, QB, A0, A1, EN, ENB, VDD, VSS );
  input A0, A1, EN, ENB;
  output Q;
  output QB;
  inout VDD, VSS;

  wire yint0;
  wire yint1;
  reg yint2;
  wire dint;

  assign yint0 = EN ^ ENB;
  assign yint1 = yint0 && EN;
  assign dint = (A0 || A1) ? VSS : VDD ;

  always @ (dint, yint1)
  begin
    if (yint1 == 1)
      begin
        yint2 = dint;
      end
  end

  assign Q = yint0 ? yint2 : 1'bZ ;
  assign QB = yint0 ? ~Q : 1'bZ ;

endmodule
