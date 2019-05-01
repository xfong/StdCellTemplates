module AOI43(Y, A0, A1, A2, A3, B0, B1, B2, B3, C0, C1, C2, C3, VDD, VSS );
  input A0, A1, A2, A3, B0, B1, B2, B3, C0, C1, C2, C3;
  output Y;
  inout VDD, VSS;

  assign Y=~((A0 && A1 && A2 && A3) || (B0 && B1 && B2 && B3) || (C0 && C1 && C2 && C3));
endmodule
