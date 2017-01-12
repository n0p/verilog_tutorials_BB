module LED_top(
    // 50MHz clock input
    input clk,
    output[7:0]LED,
    );

wire rst = 1'b0;//~sw_n[3]; // make reset active high

reg blnk;

  blinker awesome_blinker (
    .clk(clk),
    .rst(rst),
    .blink(blnk)
  );

  counter dat_counter (
    .clk(blnk),
    .rst(rst),
    .ena(1'b1),
    .out(LED)
  );

endmodule
