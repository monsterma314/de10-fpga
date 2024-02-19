/******************************************************
* Module: ss_display
* Description: Samples num_to_display on first write cycle
               and updates SS displays over NUM_SEGMENTS clock cycles
******************************************************/
module ss_display
    #(parameter NUM_DISPLAYS = 6,
      parameter NUM_SEGMENTS = 8)
    (input logic CLK, 
     input logic nRST,
     input logic load_enable,
     input logic [4*NUM_DISPLAYS-1:0] number,
     input logic [NUM_DISPLAYS-1:0] en_mask,
     output logic [NUM_DISPLAYS-1:0][NUM_SEGMENTS-1:0] SS
    );

    localparam COUNT_WIDTH = 3;   // $clog2(NUM_DISPLAYS)

    logic [NUM_DISPLAYS-1:0] en_mask_ff;
    logic [4*NUM_DISPLAYS - 1:0] number_ff;
    logic [NUM_SEGMENTS-1:0] update_SS;

    // for singular hex display LUT result
    logic [3:0] hex_char;   // 4 bit binary number to convert to hex
    logic [NUM_DISPLAYS-1:0][NUM_SEGMENTS-1:0] next_SS;
    logic active;
    logic active_ff;
    logic done;
    
    assign hex_char = number_ff[4*display_idx +: 4];

    logic [COUNT_WIDTH-1:0] display_idx; // width is $clog2(NUM_DISPLAYS)

    assign active = (load_enable || active_ff);

    always_ff @(posedge CLK, negedge nRST) begin
        if(nRST == 1'b0) begin
            number_ff <= 0;
            en_mask_ff <= 0;
            active_ff <= 1'b0;
        end
        else begin
            number_ff <= (load_enable == 1'b1)? number : number_ff;
            en_mask_ff <= (load_enable == 1'b1)? en_mask : en_mask_ff;
            active_ff <= (~done && load_enable);
        end
    end

    // seven segment LUT
    hex_display lut(.hex_char(hex_char),
                    .enable_dp(1'b0),
                    .SS(update_SS));

    // sampling counter
    flex_counter #(.CNT_WIDTH(COUNT_WIDTH)) sampler
                        (.CLK(CLK), .nRST(nRST),
                         .enable(active),
                         .clear(1'b0),
                         .rollover_val(NUM_DISPLAYS),
                         .flag_compare(NUM_DISPLAYS),
                         .count(display_idx),
                         .match_flag(done)
                         );
    always_comb begin
        next_SS = SS;    // default
        if(active) begin
            next_SS[display_idx] = update_SS;
        end
    end

    // detemrinine the SS values (driven directly to SS display)
    always_ff @(posedge CLK, negedge nRST) begin
        if(nRST == 1'b0) begin
            for(int i = 0; i < NUM_DISPLAYS; i++) begin
                SS[i] <= {NUM_SEGMENTS{1'b1}};   // active low,... 1 is off
            end
        end
        else begin
            SS <= next_SS;
        end
    end
endmodule