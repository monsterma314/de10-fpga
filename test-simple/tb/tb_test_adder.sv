`timescale 1ns / 100ps

module tb_test_adder();
    parameter CLK_PERIOD = 10ns;
    parameter GATE_DELAY = 1ns;

    logic tb_clk;
    logic tb_nrst;
    int tb_num_clocks;
    int test_num;

    // DUT inputs
    logic tb_a;
    logic tb_b;
    logic tb_cin;
    
    // DUT outputs
    logic tb_sum;
    logic tb_cout;

    logic [1:0] tb_adder;

    always begin
        tb_clk = 1'b0;
        #(CLK_PERIOD / 2.0);
        tb_clk = 1'b1;
        #(CLK_PERIOD / 2.0);
        tb_num_clocks++;
    end

    test_adder DUT(.a(tb_a),
                   .b(tb_b),
                   .cin(tb_cin),
                   .cout(tb_cout),
                   .sum(tb_sum));

    initial begin
        reset_dut();

        // now run through test cases
        for(integer i = 0; i < 8; i++) begin
            test_num = i;
            
            tb_cin = i[2];
            tb_b = i[1];
            tb_a = i[0];
            tb_adder = tb_b + tb_a + tb_cin;
            #(GATE_DELAY);
            if(tb_adder[1] != tb_cout) begin
                $info("ERROR: Expected cout = %01b but got %01b instead", tb_adder[1], tb_cout);
            end
            if(tb_adder[0] != tb_sum) begin
                $info("ERROR: Expected cout = %01b but got %01b instead", tb_adder[0], tb_sum);
            end
            @(negedge tb_clk);
        end

        $stop;
    end

    task reset_dut();
        @(negedge tb_clk);
        tb_nrst = 1'b0;
        @(negedge tb_clk);
        tb_nrst = 1'b1;
    endtask
endmodule