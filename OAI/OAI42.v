module OAI42(Y, A0, A1, A2, A3, B0, B1, B2, B3, VDD, VSS );
  input A0, A1, A2, A3, B0, B1, B2, B3;
  output Y;
  inout VDD, VSS;

  assign Y=~((A0 || A1 || A2 || A3) && (B0 || B1 || B2 || B3));
endmodule
