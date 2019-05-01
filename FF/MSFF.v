module MSFF(Q, QB, D, CLK, CLKB, VDD, VSS );
  input D, CLK, CLKB;
  output Q;
  output reg QB;
  inout VDD, VSS;

  always @ (posedge CLK, negedge CLKB)
  begin
    QB=~D;
    Q=~QB;
  end
endmodule
