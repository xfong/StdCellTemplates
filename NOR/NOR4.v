module NOR4(Y, A0, A1, A2, A3, VDD, VSS );
  input A0, A1, A2, A3;
  output Y;
  inout VDD, VSS;

  assign Y = (A0 || A1 || A2 || A3) ? VSS : VDD ;
endmodule
