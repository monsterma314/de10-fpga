`timescale 10ns/1ps

module tb_test0();

parameter SW_W = 10;
parameter PB_W = 4;
parameter LED_W = 10;
parameter SEGMENT_W = 8;
parameter DISPLAY_W = 6;

parameter CLK_PERIOD = 10ns;

/* DUT Inputs */
logic tb_clk;
logic tb_nrst = 1'b1;

logic [PB_W-1:0] tb_PB;
logic [SW_W-1:0] tb_SW;

/* DUT Outputs */
logic [9:0] tb_LEDR;
logic [5:0][7:0] tb_SS;

/* DUT Expected Outputs */
logic [9:0] tb_expected_LEDR;
logic [5:0][7:0] tb_expected_SS;

/* Navigation signals */
string test_name = "Initialization";
int tb_num_clocks;

always begin
    tb_clk = 1'b0;
    #(CLK_PERIOD / 2.0);    
    tb_clk = 1'b1;
    #(CLK_PERIOD / 2.0);
    tb_num_clocks++;
end

// Connect the DUT
test0 DUT(.CLK(tb_clk), .nRST(tb_nrst),
          .PB(tb_PB),
          .SW(tb_SW),
          .LEDR(tb_LEDR),
          .SS(tb_SS));

/***********************************************************
* main
***********************************************************/
initial begin
    // Reset the DUT
    reset_dut();

    @(negedge tb_clk);
    $stop;
end

/* Reset the DUT to default state */
task reset_dut();
    test_name = "Reset DUT";
    @(negedge tb_clk);
    tb_nrst = 1'b0;
    @(negedge tb_clk);
    tb_nrst = 1'b1;
endtask

task check_leds;
    input logic [LED_W-1:0] expected_leds;
    input logic [LED_W-1:0] actual_leds;
    begin
        if(tb_LEDR != expected_leds) begin
            $info("!!! FAILED:  expected %03x but got %03x on clock cycle %d", 
                  expected_leds, actual_leds, tb_num_clocks);
        end
    end
endtask

endmodule