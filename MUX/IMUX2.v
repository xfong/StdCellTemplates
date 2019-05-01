module IMUX2(Y, D0, D1, Sel, SelB, VDD, VSS );
  input D0, D1, Sel, SelB;
  output Y;
  inout VDD, VSS;

  wire yint;

  assign yint = (SelB && ~Sel) ? (D0 ? VSS : VDD) : (Sel && ~SelB) ? (D1 ? VSS : VDD) : 0 ;
  assign Y = (Sel ^ SelB) ? yint : 1'bZ ;

endmodule
