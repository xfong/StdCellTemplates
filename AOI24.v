module AOI24(Y, A0, A1, B0, B1, C0, C1, D0, D1, VDD, VSS );
  input A0, A1, B0, B1, C0, C1, D0, D1;
  output Y;
  inout VDD, VSS;

  assign Y=~((A0 && A1) || (B0 && B1) || (C0 && C1) || (D0 && D1));
endmodule
