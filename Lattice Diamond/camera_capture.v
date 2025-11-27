// camera_capture.v
// Capture parallel DVP stream from OV5640-style sensor.
// Assumptions:
// - VSYNC = 1 between frames, 0 during active frame   (common for OV sensors in some modes)
//   If your sensor is opposite polarity, flip logic where marked.
// - HREF = 1 on active pixels in a line
// - PCLK edges mark pixel timing
module camera_capture (
    input  wire        PCLK,
    input  wire        VSYNC,
    input  wire        HREF,
    input  wire [7:0]  Ybus,      // {Y9..Y2} mapped top-level

    output reg  [11:0] pixel_x,
    output reg  [11:0] pixel_y,
    output reg  [7:0]  pixel_val,
    output reg         pixel_valid,

    output reg         frame_start,
    output reg         frame_end,
    output reg         line_end
);

    // sync edge tracking
    reg vsync_d, href_d;
    always @(posedge PCLK) begin
        vsync_d <= VSYNC;
        href_d  <= HREF;
    end

    // frame_start: VSYNC high->low
    wire fs = (vsync_d == 1'b1) && (VSYNC == 1'b0);
    // frame_end:   VSYNC low->high
    wire fe = (vsync_d == 1'b0) && (VSYNC == 1'b1);

    // line_end: HREF 1->0 while we are in frame
    wire le = (href_d == 1'b1) && (HREF == 1'b0);

    always @(posedge PCLK) begin
        frame_start <= fs;
        frame_end   <= fe;
        line_end    <= le;
    end

    // x/y counters
    always @(posedge PCLK) begin
        if (fs) begin
            pixel_x <= 12'd0;
            pixel_y <= 12'd0;
        end else if (!VSYNC) begin
            // inside active frame (VSYNC=0)
            if (HREF) begin
                // active pixel
                pixel_x <= pixel_x + 12'd1;
            end else if (le) begin
                // end of line, move to next row
                pixel_x <= 12'd0;
                pixel_y <= pixel_y + 12'd1;
            end
        end
        // on fe (frame_end), we just stop incrementing
    end

    // pixel data capture
    always @(posedge PCLK) begin
        if (!VSYNC && HREF) begin
            pixel_val   <= Ybus;    // already 8b from sensor bus
            pixel_valid <= 1'b1;
        end else begin
            pixel_valid <= 1'b0;
        end
    end

endmodule
