// roi_tracker.v
// Builds a bounding box (ROI) of motion for each frame.
// Very simple motion detector: abs(curr - bg) > THRESH.
// bg is a coarse background buffer in BRAM.

module roi_tracker #(
    parameter THRESH = 8'd20
)(
    input  wire        PCLK,
    input  wire        detect_enable,   // mode==1 or mode==2
    input  wire        frame_start,
    input  wire        frame_end,
    input  wire        pixel_valid,
    input  wire [11:0] pixel_x,
    input  wire [11:0] pixel_y,
    input  wire [7:0]  pixel_val,

    // latched outputs for ESP32 to read
    output reg         roi_ready_frame,
    output reg         roi_valid_frame,
    output reg [11:0]  roi_xmin,
    output reg [11:0]  roi_xmax,
    output reg [11:0]  roi_ymin,
    output reg [11:0]  roi_ymax
);

    // coarse address (downsample 16x16 blocks)
    wire [7:0] bg_addr = { pixel_y[7:4], pixel_x[7:4] };

    reg [7:0] bg_mem [0:255];
    reg [7:0] bg_curr;
    reg [7:0] bg_new;
    reg       bg_we;

    // read current background
    always @(posedge PCLK) begin
        bg_curr <= bg_mem[bg_addr];
    end

    // compare
    wire [7:0] diff = (pixel_val > bg_curr) ? (pixel_val - bg_curr) : (bg_curr - pixel_val);
    wire       motion_hit = detect_enable && pixel_valid && (diff > THRESH);

    // running box for current frame
    reg motion_any;
    reg [11:0] run_xmin, run_xmax, run_ymin, run_ymax;

    always @(posedge PCLK) begin
        if (frame_start) begin
            motion_any <= 1'b0;
            run_xmin   <= 12'hFFF;
            run_xmax   <= 12'd0;
            run_ymin   <= 12'hFFF;
            run_ymax   <= 12'd0;
        end else if (pixel_valid && detect_enable) begin
            if (motion_hit) begin
                motion_any <= 1'b1;
                if (pixel_x < run_xmin) run_xmin <= pixel_x;
                if (pixel_x > run_xmax) run_xmax <= pixel_x;
                if (pixel_y < run_ymin) run_ymin <= pixel_y;
                if (pixel_y > run_ymax) run_ymax <= pixel_y;
            end
        end
    end

    // update background: super basic overwrite each frame at those taps
    always @(posedge PCLK) begin
        if (pixel_valid) begin
            bg_we  <= 1'b1;
            bg_new <= pixel_val;
        end else begin
            bg_we  <= 1'b0;
            bg_new <= 8'd0;
        end

        if (bg_we)
            bg_mem[bg_addr] <= bg_new;
    end

    // latch final ROI at end of frame
    always @(posedge PCLK) begin
        if (frame_end) begin
            roi_ready_frame <= 1'b1;
            if (motion_any) begin
                roi_valid_frame <= 1'b1;
                roi_xmin        <= run_xmin;
                roi_xmax        <= run_xmax;
                roi_ymin        <= run_ymin;
                roi_ymax        <= run_ymax;
            end else begin
                roi_valid_frame <= 1'b0;
            end
        end else begin
            // roi_ready_frame is just a pulse-ish; you might want sync out to SPI domain later
            roi_ready_frame <= 1'b0;
        end
    end

endmodule
