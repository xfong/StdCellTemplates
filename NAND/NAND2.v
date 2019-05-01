module NAND2(Y, A0, A1, VDD, VSS );
  input A0, A1;
  output Y;
  inout VDD, VSS;

  assign Y = (A0 && A1) ? VSS : VDD ;
endmodule
