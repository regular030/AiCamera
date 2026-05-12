// reset_sync.v
// Simple reset synchronizer (active-low reset out).
// rst_n_in can be tied high (1'b1) if you don't have an external reset,
// and you can instead drive a POR reset generator upstream if desired.

`timescale 1ns/1ps

module reset_sync #(
    parameter integer STAGES = 2
)(
    input  wire clk,
    input  wire rst_n_in,    // async input reset (active-low). If none, tie to 1'b1.
    output wire rst_n_out    // synced reset (active-low)
);
    reg [STAGES-1:0] sync;

    always @(posedge clk or negedge rst_n_in) begin
        if (!rst_n_in) begin
            sync <= {STAGES{1'b0}};
        end else begin
            sync <= {sync[STAGES-2:0], 1'b1};
        end
    end

    assign rst_n_out = sync[STAGES-1];

endmodule