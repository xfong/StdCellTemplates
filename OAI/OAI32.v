module OAI32(Y, A0, A1, A2, B0, B1, B2, VDD, VSS );
  input A0, A1, A2, B0, B1, B2;
  output Y;
  inout VDD, VSS;

  assign Y=~((A0 || A1 || A2) && (B0 || B1 || B2));
endmodule
