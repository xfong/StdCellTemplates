module HA(COUT, SUM, A, B, VDD, VSS );
  input A, B;
  output COUT, SUM;
  inout VDD, VSS;

  assign SUM=A ^ B;
  assign COUT=A && B;
endmodule
