module OAI23(Y, A0, A1, B0, B1, C0, C1, VDD, VSS );
  input A0, A1, B0, B1, C0, C1;
  output Y;
  inout VDD, VSS;

  assign Y=~((A0 || A1) && (B0 || B1) && (C0 || C1));
endmodule
