// roi_streamer_rgb565.v
module roi_streamer_rgb565 (
    input  wire        pclk,
    input  wire        pix_valid,
    input  wire [15:0] pix_rgb565,
    input  wire [11:0] pix_x,
    input  wire [11:0] pix_y,
    input  wire        frame_start,

    input  wire [11:0] roi_xmin,
    input  wire [11:0] roi_xmax,
    input  wire [11:0] roi_ymin,
    input  wire [11:0] roi_ymax,

    input  wire        arm_req_spi,   // async from SPI domain; synced inside

    // SPI domain read port
    input  wire        spi_clk,
    input  wire        rd_en,
    output wire [7:0]  rd_data,
    output wire        rd_empty
);
    // Sync arm into pclk
    reg arm_meta, arm_pclk;
    always @(posedge pclk) begin
        arm_meta <= arm_req_spi;
        arm_pclk <= arm_meta;
    end

    // Simple state
    localparam S_IDLE=0, S_WAITFRAME=1, S_HEADER=2, S_STREAM=3, S_DONE=4;
    reg [2:0] state;

    // DC FIFO for bytes
    wire       fifo_full;
    reg        wr_en;
    reg [7:0]  wr_data;

    dc_fifo #(.WIDTH(8), .DEPTH(2048)) u_dc (
        .wr_clk (pclk),
        .wr_en  (wr_en),
        .wr_data(wr_data),
        .wr_full(fifo_full),

        .rd_clk (spi_clk),
        .rd_en  (rd_en),
        .rd_data(rd_data),
        .rd_empty(rd_empty),

        .rst_n  (1'b1)
    );

    // ROI dims
    wire [11:0] width  = (roi_xmax >= roi_xmin) ? (roi_xmax - roi_xmin + 12'd1) : 12'd0;
    wire [11:0] height = (roi_ymax >= roi_ymin) ? (roi_ymax - roi_ymin + 12'd1) : 12'd0;

    // Stream logic
    always @(posedge pclk) begin
        wr_en  <= 1'b0;
        wr_data<= 8'h00;

        case (state)
        S_IDLE: begin
            if (arm_pclk) state <= S_WAITFRAME;
        end
        S_WAITFRAME: begin
            if (frame_start) state <= S_HEADER;
        end
        S_HEADER: begin
            // Push 0xAA, w_hi, w_lo, h_hi, h_lo
            if (!fifo_full) begin wr_en<=1'b1; wr_data<=8'hAA; state<=3'd5; end
        end
        3'd5: if (!fifo_full) begin wr_en<=1'b1; wr_data<=width[11:4];  state<=3'd6; end
        3'd6: if (!fifo_full) begin wr_en<=1'b1; wr_data<={width[3:0],4'b0000}; state<=3'd7; end
        3'd7: if (!fifo_full) begin wr_en<=1'b1; wr_data<=height[11:4]; state<=3'd8; end
        3'd8: if (!fifo_full) begin wr_en<=1'b1; wr_data<={height[3:0],4'b0000}; state<=S_STREAM; end

        S_STREAM: begin
            if (pix_valid &&
                (pix_x >= roi_xmin) && (pix_x <= roi_xmax) &&
                (pix_y >= roi_ymin) && (pix_y <= roi_ymax)) begin
                // Push RGB565 high then low
                if (!fifo_full) begin
                    wr_en  <= 1'b1;
                    wr_data<= pix_rgb565[15:8];
                end
                // second byte next cycle
                if (!fifo_full) begin
                    wr_en  <= 1'b1;
                    wr_data<= pix_rgb565[7:0];
                end
            end
            if (frame_start) state <= S_DONE; // next frame started ? stop this burst
        end
        S_DONE: begin
            // wait for next arm
            if (!arm_pclk) state <= S_IDLE;
        end
        default: state <= S_IDLE;
        endcase
    end
endmodule
