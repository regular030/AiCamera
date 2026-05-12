module async_fifo_16x1024 #(
    parameter integer AW = 10
) (
    input  wire        wr_clk,
    input  wire        wr_rst,
    input  wire        wr_en,
    input  wire [15:0] wr_data,
    output wire        wr_full,
    output wire [AW-1:0] wr_level,
    input  wire        rd_clk,
    input  wire        rd_rst,
    input  wire        rd_en,
    output reg  [15:0] rd_data,
    output wire        rd_empty,
    output wire [AW-1:0] rd_level
);
    localparam PW=AW+1;
    reg [15:0] mem [0:(1<<AW)-1];
    reg [PW-1:0] wr_bin, wr_gray, rd_bin, rd_gray;
    reg [PW-1:0] rd_gray_w1, rd_gray_w2, wr_gray_r1, wr_gray_r2;

    function [PW-1:0] bin2gray(input [PW-1:0] b); begin bin2gray=(b>>1)^b; end endfunction
    function [PW-1:0] gray2bin(input [PW-1:0] g); integer i; begin gray2bin[PW-1]=g[PW-1]; for(i=PW-2;i>=0;i=i-1) gray2bin[i]=gray2bin[i+1]^g[i]; end endfunction

    wire wr_do = wr_en && !wr_full;
    wire rd_do = rd_en && !rd_empty;
    wire [PW-1:0] wr_bin_inc = wr_bin + 1'b1;
    wire [PW-1:0] wr_bin_next = wr_bin + (wr_do ? 1'b1 : 1'b0);
    wire [PW-1:0] rd_bin_next = rd_bin + (rd_do ? 1'b1 : 1'b0);
    wire [PW-1:0] wr_gray_inc = bin2gray(wr_bin_inc);
    wire [PW-1:0] wr_gray_next = bin2gray(wr_bin_next);
    wire [PW-1:0] rd_gray_next = bin2gray(rd_bin_next);
    assign wr_full = (wr_gray_inc == {~rd_gray_w2[PW-1:PW-2], rd_gray_w2[PW-3:0]});
    assign rd_empty = (rd_gray == wr_gray_r2);
    wire [PW-1:0] wr_level_w = wr_bin - gray2bin(rd_gray_w2);
    wire [PW-1:0] rd_level_w = gray2bin(wr_gray_r2) - rd_bin;
    assign wr_level = wr_level_w[AW-1:0];
    assign rd_level = rd_level_w[AW-1:0];

    always @(posedge wr_clk) begin
        if (wr_rst) begin wr_bin<=0; wr_gray<=0; rd_gray_w1<=0; rd_gray_w2<=0; end
        else begin
            rd_gray_w1 <= rd_gray;
            rd_gray_w2 <= rd_gray_w1;
            if (wr_do) begin
                mem[wr_bin[AW-1:0]] <= wr_data;
                wr_bin <= wr_bin_next;
                wr_gray <= wr_gray_next;
            end
        end
    end

    always @(posedge rd_clk) begin
        if (rd_rst) begin rd_bin<=0; rd_gray<=0; wr_gray_r1<=0; wr_gray_r2<=0; rd_data<=0; end
        else begin
            wr_gray_r1 <= wr_gray;
            wr_gray_r2 <= wr_gray_r1;
            if (rd_do) begin
                rd_data <= mem[rd_bin[AW-1:0]];
                rd_bin <= rd_bin_next;
                rd_gray <= rd_gray_next;
            end
        end
    end
endmodule
