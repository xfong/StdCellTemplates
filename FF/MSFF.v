module MSFF(Q, QB, D, CLK, CLKB, VDD, VSS );
  input D, CLK, CLKB;
  output Q;
  output reg QB;
  inout VDD, VSS;

  wire yint0;
  wire yint1;

  assign yint0 = CLK ^ CLKB ;
  assign yint1 = CLK && yint0 ;
  
  always @ (posedge yint1)
  begin
    QB = ~D;
  end

  assign Q = ~QB;
endmodule
