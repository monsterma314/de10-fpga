module hex_display
    #(parameter NUM_SEGMENTS = 8,
      parameter BITS_PER_NIBBLE = 4)
(
                   input logic [BITS_PER_NIBBLE-1:0] hex_char,
                   input logic enable_dp,
                   output logic [NUM_SEGMENTS-1:0] SS
);
    assign SS[NUM_SEGMENTS-1] = enable_dp;

    /* Active low driver */
    // TODO: Debug WAARNING... "truncated value with size 112 to match 
    //                          size of target (28)"
    logic [(1<<BITS_PER_NIBBLE)-1:0][NUM_SEGMENTS-2:0] hex_char_lut = {
        7'b1000000,   // 0
        7'b1111001,   // 1
        7'b0111011,   // 2
        7'b0110000,   // 3
        7'b0011001,   // 4
        7'b0010010,   // 5
        7'b0000010,   // 6
        7'b1111000,   // 7
        7'b0000000,   // 8
        7'b0010000,   // 9
        7'b0001000,   // A
        7'b0000011,   // b
        7'b1000110,   // C
        7'b0100001,   // d
        7'b0000110,   // E
        7'b0001110    // F
    };

    assign SS[NUM_SEGMENTS-2:0] = hex_char_lut[hex_char];
endmodule