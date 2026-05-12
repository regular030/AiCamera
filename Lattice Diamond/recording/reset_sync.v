module reset_sync(
    input  wire clk,
    input  wire arst_n,
    output wire srst
);
    reg [2:0] shreg = 3'b111;
    always @(posedge clk or negedge arst_n) begin
        if (!arst_n) shreg <= 3'b111;
        else         shreg <= {shreg[1:0], 1'b0};
    end
    assign srst = shreg[2];
endmodule
