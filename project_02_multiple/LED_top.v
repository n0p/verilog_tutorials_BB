module LED_top(
    // 50MHz clock input
    input clk,
    // Input from buttons (active low)
//    input [3:0]sw_n,
    // Outputs to the 8 onboard LEDs
    output[7:0]LED,
    );

wire rst = 1'b0;//~sw_n[3]; // make reset active high

reg blnk;

// these signals should be high-z when not used
//assign sw1 = 1'bz;
//assign sw2 = 1'bz;
//assign sw3 = 1'bz;

assign LED[7:0] = 8'b0;

  blinker awesome_blinker (
    .clk(clk),
    .rst(rst),
    .blink(blnk)
  );

  counter dat_counter (
    .clk(clk),
    .rst(rst),
    .ena(1'b1),
    .out(LED[7:0])
  );

endmodule
