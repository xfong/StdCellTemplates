module TRIIBUF(Y, A, EN, ENB, VDD, VSS );
  input A, EN, ENB;
  inout Y;
  inout VDD, VSS;

  wire yint;

  assign yint = A ? VSS : VDD ;
  assign Y = (EN && ~ENB) ? yint : 1'bZ ;

endmodule
