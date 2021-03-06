`include "demux_1_2.v"

module demux_1_2_tb ();
  reg [15:0] i,z;
  reg sel;
  wire [15:0] x, y;

demux_1_2 demux_1_2 (i,sel,x,y);

initial begin
  $display ("x = ",x, " y = ", y, " sel = ", sel, " i = ", i);
  for(z = 0; z < 2; ++z) begin
  $dumpfile("mux_2_1_tb.vcd");
  $dumpvars();
    i = 3;
    sel = z;
    #5
    $display ("x = ",x, " y = ", y, " sel = ", sel, " i = ", i);
  end
end
endmodule