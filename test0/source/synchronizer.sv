module synchronizer
        #(parameter RESET_VALUE = 1'b0)
        (input logic CLK, 
        input logic nRST,
        input logic signal,
        output logic signal_sync
        );
    
    logic signal_ff;

    always_ff @(posedge CLK, negedge nRST) begin
        if(nRST == 1'b0) begin
            signal_ff <= RESET_VALUE;
            signal_sync <= RESET_VALUE;
        end
        else begin
            signal_ff <= signal;
            signal_sync <= signal_ff;
        end
    end
endmodule