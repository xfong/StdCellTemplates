module OAI44(Y, A0, A1, A2, A3, B0, B1, B2, B3, C0, C1, C2, C3, D0, D1, D2, D3, VDD, VSS );
  input A0, A1, A2, A3, B0, B1, B2, B3, C0, C1, C2, C3, D0, D1, D2, D3;
  output Y;
  inout VDD, VSS;

  assign Y=~((A0 || A1 || A2 || A3) && (B0 || B1 || B2 || B3) && (C0 || C1 || C2 || C3) && (D0 || D1 || D2 || D3));
endmodule
