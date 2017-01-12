module counter (
clk,
rst,
ena,
out
);

input clk;
input rst;
input ena;

output [7:0] out;

wire clk;
wire rst;
wire ena;

reg [7:0] out;

always @ (posedge clk)
begin: counter

  if (rst == 1'b1) begin
    out <= #1 8'b00000000;
  end

  else if (ena == 1'b1) begin
    out <= #1 out + 1;
  end
end

endmodule
