module AOI22(Y, A0, A1, B0, B1, VDD, VSS );
  input A0, A1, B0, B1;
  output Y;
  inout VDD, VSS;

  assign Y=~((A0 && A1) || (B0 && B1));
endmodule
