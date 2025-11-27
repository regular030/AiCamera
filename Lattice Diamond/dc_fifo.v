// dc_fifo.v - simple dual-clock FIFO (depth must be power-of-two)
// NOTE: for production, use vendor FIFO; this is fine for modest speeds.

module dc_fifo #(parameter WIDTH=8, parameter DEPTH=1024) (
    input  wire              wr_clk,
    input  wire              wr_en,
    input  wire [WIDTH-1:0]  wr_data,
    output wire              wr_full,

    input  wire              rd_clk,
    input  wire              rd_en,
    output reg  [WIDTH-1:0]  rd_data,
    output wire              rd_empty,

    input  wire              rst_n
);
    localparam AW = $clog2(DEPTH);

    reg [WIDTH-1:0] mem [0:DEPTH-1];

    reg [AW:0] wptr_bin, wptr_gray;
    reg [AW:0] rptr_bin, rptr_gray;

    // write
    always @(posedge wr_clk or negedge rst_n) begin
        if (!rst_n) begin
            wptr_bin  <= 0; wptr_gray <= 0;
        end else begin
            if (wr_en && !wr_full) begin
                mem[wptr_bin[AW-1:0]] <= wr_data;
                wptr_bin  <= wptr_bin + 1'b1;
                wptr_gray <= (wptr_bin + 1'b1) ^ ((wptr_bin + 1'b1)>>1);
            end
        end
    end

    // read
    always @(posedge rd_clk or negedge rst_n) begin
        if (!rst_n) begin
            rptr_bin <= 0; rptr_gray <= 0; rd_data <= {WIDTH{1'b0}};
        end else begin
            if (rd_en && !rd_empty) begin
                rd_data   <= mem[rptr_bin[AW-1:0]];
                rptr_bin  <= rptr_bin + 1'b1;
                rptr_gray <= (rptr_bin + 1'b1) ^ ((rptr_bin + 1'b1)>>1);
            end
        end
    end

    // sync gray pointers
    reg [AW:0] wptr_gray_rd1, wptr_gray_rd2;
    reg [AW:0] rptr_gray_wr1, rptr_gray_wr2;

    always @(posedge rd_clk) begin
        wptr_gray_rd1 <= wptr_gray;
        wptr_gray_rd2 <= wptr_gray_rd1;
    end
    always @(posedge wr_clk) begin
        rptr_gray_wr1 <= rptr_gray;
        rptr_gray_wr2 <= rptr_gray_wr1;
    end

    // gray->bin
    function [AW:0] gray2bin(input [AW:0] g);
        integer i;
        begin
            gray2bin[AW] = g[AW];
            for (i=AW-1;i>=0;i=i-1) gray2bin[i] = gray2bin[i+1]^g[i];
        end
    endfunction

    wire [AW:0] rbin_in_wr = gray2bin(rptr_gray_wr2);
    wire [AW:0] wbin_in_rd = gray2bin(wptr_gray_rd2);

    assign wr_full  = ((wptr_gray[AW]     != rptr_gray_wr2[AW]) &&
                       (wptr_gray[AW-1]   != rptr_gray_wr2[AW-1]) &&
                       (wptr_gray[AW-2:0] == rptr_gray_wr2[AW-2:0]));
    assign rd_empty = (wptr_gray_rd2 == rptr_gray);
endmodule
