module BUF(Y, A, VDD, VSS );
  input A;
  output Y;
  inout VDD, VSS;

  assign Y = A ? VDD : VSS ;
endmodule
