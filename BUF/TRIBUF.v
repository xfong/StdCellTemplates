module TRIBUF(Y, A, EN, ENB, VDD, VSS );
  input A, EN, ENB;
  inout Y;
  inout VDD, VSS;

  wire yint;

  assign yint = A ? VDD : VSS ;
  assign Y = (EN && ~ENB) ? yint : 1'bZ ;

endmodule
