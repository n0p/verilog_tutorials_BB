module iCE40_top(
    // 12MHz clock input
    input clk,
    // Input from buttons (active low)
//    input [3:0]sw_n,
    // Outputs to the 8 onboard LEDs
    output[7:0]LED,
    );

wire rst = 1'b0;//~sw_n[3]; // make reset active high

led_wave #(.CTR_LEN(25)) wave(
    .rst(rst),
    .clk(clk),
    .led(LED)
  );  


endmodule
