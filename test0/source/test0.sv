module test0(input logic CLK,           /* Dedicated on-board PLL */
             input logic nRST,          /* MSEL[5] */
             input logic [3:0] PB,      /* Push Buttons */
             input logic [9:0] SW,      /* Large Slide Switches */
             input logic [4:0] MSEL,    /* MSEL Slide Switches (not SW10) */
             output logic [9:0] LEDR,   /* LEDs */
             output logic [5:0][7:0]SS  /* Seven Segment Displays */
);
    logic [23:0] count;
    logic match;
    
    localparam NUM_PUSH_BUTTONS = 4;
    localparam NUM_SLIDE_SWITCHES = 10;
    localparam NUM_MSEL_SWITCHES = 5;

    logic [NUM_PUSH_BUTTONS-1:0] PB_sync;
    logic [NUM_SLIDE_SWITCHES-1:0] SW_sync;
    logic [NUM_MSEL_SWITCHES-1:0] MSEL_sync;

    assign LEDR = 10'b1100100101;

    // push button synchronizers
    generate
        genvar i;
        for(i = 0; i < NUM_PUSH_BUTTONS; i++) begin : myPBs
            synchronizer #(0) sync_anon (.CLK(CLK),
                                    .nRST(nRST),
                                    .signal(PB[i]),
                                    .signal_sync(PB_sync[i]));
        end
    endgenerate
    generate
        genvar j;
        for(j = 0; j < NUM_SLIDE_SWITCHES; j++) begin : mySWs
            synchronizer #(0) sync_anon (.CLK(CLK),
                                    .nRST(nRST),
                                    .signal(SW[j]),
                                    .signal_sync(SW_sync[j]));
        end
    endgenerate
    generate
        genvar k;
        for(k = 0; k < NUM_MSEL_SWITCHES; k++) begin : myMSELs
            synchronizer sync_anon (.CLK(CLK),
                                    .nRST(nRST),
                                    .signal(MSEL[k]),
                                    .signal_sync(MSEL_sync[k]));
        end
    endgenerate

    ss_display ssDriver(.CLK(CLK),
                        .nRST(nRST),
                        .number(count),
                        .en_mask(6'b101111),
                        .SS(SS));
    
    flex_counter cnt(.CLK(CLK), 
                     .nRST(nRST),
                     .enable(SW_sync[0]), 
                     .clear(SW_sync[9]),
                     .rollover_val(24'hFFFFFF),
                     .flag_compare(24'h800000),
                     .count(count),
                     .match_flag(match));
endmodule