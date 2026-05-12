module cam_capture_rgb565(
    input  wire       pclk,
    input  wire       rst,
    input  wire       capture_enable,
    input  wire       vsync,
    input  wire       href,
    input  wire [7:0] cam_byte,
    output reg        fifo_wr_en,
    output reg [15:0] fifo_wr_data,
    output reg        seen_vsync_toggle,
    output reg        seen_href_toggle,
    output reg        frame_start_toggle,
    output reg        frame_done_toggle,
    output reg [18:0] pixel_word_count
);
    reg [7:0] hi_byte;
    reg       byte_phase;
    reg       href_d, vsync_d;
    reg       in_frame;
    reg       have_pixels_this_frame;

    always @(posedge pclk) begin
        if (rst) begin
            fifo_wr_en            <= 1'b0;
            fifo_wr_data          <= 16'h0000;
            seen_vsync_toggle     <= 1'b0;
            seen_href_toggle      <= 1'b0;
            frame_start_toggle    <= 1'b0;
            frame_done_toggle     <= 1'b0;
            pixel_word_count      <= 19'd0;
            hi_byte               <= 8'h00;
            byte_phase            <= 1'b0;
            href_d                <= 1'b0;
            vsync_d               <= 1'b1;
            in_frame              <= 1'b0;
            have_pixels_this_frame<= 1'b0;
        end else begin
            fifo_wr_en <= 1'b0;
            href_d  <= href;
            vsync_d <= vsync;

            if (href && !href_d) begin
                seen_href_toggle <= ~seen_href_toggle;
                byte_phase <= 1'b0;
            end
            if (!href) begin
                byte_phase <= 1'b0;
            end

            // OV5640 DVP convention: VSYNC=1 during frame blanking, active image while VSYNC=0.
            // Start a frame on falling edge of VSYNC.
            if (!vsync && vsync_d) begin
                seen_vsync_toggle   <= ~seen_vsync_toggle;
                in_frame            <= 1'b1;
                have_pixels_this_frame <= 1'b0;
                byte_phase          <= 1'b0;
                pixel_word_count    <= 19'd0;
                if (capture_enable) begin
                    frame_start_toggle <= ~frame_start_toggle;
                end
            end

            // End a frame on rising edge of VSYNC, but only if we actually captured pixels.
            if (vsync && !vsync_d) begin
                if (in_frame && capture_enable && have_pixels_this_frame) begin
                    frame_done_toggle <= ~frame_done_toggle;
                end
                in_frame <= 1'b0;
                byte_phase <= 1'b0;
            end

            if (capture_enable && in_frame && href) begin
                if (!byte_phase) begin
                    hi_byte    <= cam_byte;
                    byte_phase <= 1'b1;
                end else begin
                    fifo_wr_data <= {hi_byte, cam_byte};
                    fifo_wr_en   <= 1'b1;
                    byte_phase   <= 1'b0;
                    pixel_word_count <= pixel_word_count + 19'd1;
                    have_pixels_this_frame <= 1'b1;
                end
            end
        end
    end
endmodule
