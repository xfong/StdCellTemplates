module DLATCH(Q, QB, D, EN, ENB, VDD, VSS );
  input D, EN, ENB;
  output Q;
  output QB;
  inout VDD, VSS;

  wire yint0;
  wire yint1;
  reg yint2;
  wire yint3;
  wire dbuf;

  assign yint0 = EN ^ ENB ;
  assign yint1 = yint0 && EN ;
  assign dbuf = D ? VDD : VSS ;

  always @ (yint1, dbuf)
    begin
      if (yint1 == 1)
        begin
          yint2 = dbuf;
        end
    end

  assign Q = yint0 ? ~QB : 1'bZ ;
  assign QB = yint0 ? yint2 : 1'bZ ;  

endmodule
