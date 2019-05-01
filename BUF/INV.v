module INV(Y, A, VDD, VSS );
  input A;
  output Y;
  inout VDD, VSS;

  assign Y = A ? VSS : VDD ;
endmodule
