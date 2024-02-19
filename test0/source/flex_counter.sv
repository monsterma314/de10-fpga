module flex_counter
    #(parameter CNT_WIDTH = 8)
    (input logic CLK, nRST,
     input logic enable,
     input logic clear,
     input logic [CNT_WIDTH-1:0] rollover_val, 
     input logic [CNT_WIDTH-1:0] flag_compare,
     output logic [CNT_WIDTH-1:0] count,
     output logic match_flag);
    
    // Next State Logic
    logic [CNT_WIDTH-1:0] next_count;
    assign next_count = (clear == 1'b1)?            {CNT_WIDTH{1'b0}} :
                        (enable == 1'b0)?           count :
                        (count == rollover_val)?    1 : count + 1;

    // Register outputs
    always_ff @(posedge CLK, negedge nRST) begin
        if(nRST == 1'b0) begin
            count <= {CNT_WIDTH{1'b0}};
            match_flag <= (flag_compare == 0);
        end
        else begin
            count <= next_count;
            match_flag <= (next_count == flag_compare);
        end
    end
endmodule