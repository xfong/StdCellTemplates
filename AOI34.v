module AOI34(Y, A0, A1, A2, B0, B1, B2, C0, C1, C2, D0, D1, D2, VDD, VSS );
  input A0, A1, A2, B0, B1, B2, C0, C1, C2, D0, D1, D2;
  output Y;
  inout VDD, VSS;

  assign Y=~((A0 && A1 && A2) || (B0 && B1 && B2) || (C0 && C1 && C2) || (D0 && D1 && D2));
endmodule
