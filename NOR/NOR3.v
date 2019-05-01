module NOR3(Y, A0, A1, A2, VDD, VSS );
  input A0, A1, A2;
  output Y;
  inout VDD, VSS;

  assign Y=~(A0 || A1 || A2);
endmodule
