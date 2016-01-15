verilog files for iCE40HX8K Breakout Board, build with IceStorm.
These files are designed to be used with verilog tutorials
see bottom-left here:

https://embeddedmicro.com/tutorials/mojo/creating-a-project

Install IceStorm: http://www.clifford.at/icestorm/

Install necessary tools:

    sudo apt-get install git cmake 

Clone the repository:

    git clone https://github.com/peepo/verilog_tutorials_BB

Build one of the examples:

    cd project
    make
    make upload

NB: make upload uses -S to program SRAM so please remove J7 jumper and rotate 2xJ6 jumpers


|Project|name|brief|description|
|----|----|----|----|
|0|LED|
|00|LED|with +out|
|000|switch|tbc|
|1|button|button|
|2|Sync Logic|LED blink|1Hz|
|3|PWM1|LEDs fade|4x, 6x with clk_50 from divider
|4|PWM2|LEDs clk |8 LEDs fade in and out together ~1.5hz ?anomalous
|5|PWM3|LEDs wave|8 LEDs fade in and out in sequence 12MHz
|5_PLL|PWM4|LEDs PLL|8 LEDs fade in and out in sequence 25/48/96MHz
|6|_tb1|testbench|basic and 
|7|_tb2|testbench clk|pwm for a couple of values
|8|ext button|ext button|6,800Ω connects +ive to input and switch, -ive to other end
|9|metastability|ext button|with debounce
|10|PWM5|servo|arm swings through range: red-TP1 brown-TP3 orange-P16
||Hello World|AVR|rely on AVR microcontroller in mojo, PIC is competitor
||----|--|mimas, XuLA2 have PIC18F14K50, 
||SPI-|--|logipi may not have microcontroller? has spansion flash
||LogiCore|RAM|no project...
|17|Timing|100Mhz|builds with timing errors : odd that @50Mhz no errors?
|18|Timing_pipeline|100Mhz|builds with no timing errors due to pipeline
|19|FSM |LEDs 2x|left_PWM & right_PWM, maybe also 5x states, ie forward....
||Memory mapping|AVR|ibid
||SDRAM|N/A|MimasV2possibly or XuLA2 SDRAM before writing to SDcard
||Embedded processor|N/A|skipping for moment.

---

please send comments, and report bugs to the current maintainer: Jonathan Chetwynd

jay@peepo.com

you may like these other excellent verilog tutorials:

https://github.com/Obijuan/open-fpga-verilog-tutorial/wiki

https://nandland.com/verilog/tutorials/tutorial-introduction-to-verilog-for-beginners.html

---

when cmake is implemented:

Build one of the examples:

    cd verilog_tutorials_BB/build
    cmake ..
    cd project_0/
    make
    ./LED

Build all examples (takes a while):

    cd verilog_tutorials_BB/build
    cmake ..
    make
