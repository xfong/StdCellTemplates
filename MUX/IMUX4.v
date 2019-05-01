module IMUX4(Y, D0, D1, D2, D3, Sel0, Sel1, Sel0B, Sel1B, VDD, VSS );
  input D0, D1, D2, D3, Sel0, Sel0B, Sel1, Sel1B;
  output Y;
  inout VDD, VSS;

  wire yint;
  wire ch0;
  wire ch1;
  wire ch2;
  wire ch3;
  wire selVal;

  assign ch0 = D0 ? VSS : VDD ;
  assign ch1 = D1 ? VSS : VDD ;
  assign ch2 = D2 ? VSS : VDD ;
  assign ch3 = D3 ? VSS : VDD ;
  assign selVal = (Sel0 ^ Sel0B) && (Sel1 ^ Sel1B);
  assign yint = (Sel1B && Sel0B && ch0) || (Sel1B && Sel0 && ch1) || (Sel1 && Sel0B && ch2) || (Sel1 && Sel0 && ch3) ;
  assign Y = selVal ? yint : 1'bZ ;

endmodule
