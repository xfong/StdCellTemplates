module FA(COUT, SUM, A, B, CIN, VDD, VSS );
  input A, B, CIN;
  output COUT, SUM;
  inout VDD, VSS;

  assign SUM=A ^ B ^ CIN;
  assign COUT=((A && B) || (A && CIN) || (B && CIN));
endmodule
