// roi_crop_stream.v
// Extracts only pixels inside the current ROI box and streams them out.
// Assumptions:
//  - pixel_x, pixel_y, pixel_val, pixel_valid are aligned to PCLK
//  - roi_* are stable for the frame (latched at frame_start by your roi_tracker)
// Outputs:
//  - crop_valid: 1 when crop_pixel is valid
//  - crop_pixel: grayscale (8-bit) from Y bus
//  - crop_col, crop_row: coordinates inside ROI (start at 0,0 at xmin,ymin)
//  - crop_line_last: last pixel in ROI row (handy for line-based consumers)
//  - crop_frame_last: last pixel in ROI frame (handy for block transfers)

module roi_crop_stream #(
    parameter XW = 12,
    parameter YW = 12
)(
    input  wire         PCLK,
    input  wire         rst_n,

    // incoming pixel stream from camera_capture
    input  wire         pixel_valid,
    input  wire [XW-1:0] pixel_x,
    input  wire [YW-1:0] pixel_y,
    input  wire [7:0]   pixel_val,

    // current ROI (latched per frame by your roi_tracker)
    input  wire         roi_valid_frame,   // '1' means ROI box is valid this frame
    input  wire [XW-1:0] roi_xmin,
    input  wire [XW-1:0] roi_xmax,         // inclusive
    input  wire [YW-1:0] roi_ymin,
    input  wire [YW-1:0] roi_ymax,         // inclusive

    input  wire         crop_enable,       // set by mode/control (e.g., detect or record)

    // crop stream out
    output reg          crop_valid,
    output reg  [7:0]   crop_pixel,
    output reg  [XW-1:0] crop_col,
    output reg  [YW-1:0] crop_row,
    output reg          crop_line_last,
    output reg          crop_frame_last
);

    // ROI width/height (computed combinationally)
    wire [XW-1:0] roi_w = (roi_xmax >= roi_xmin) ? (roi_xmax - roi_xmin + 1'b1) : {XW{1'b0}};
    wire [YW-1:0] roi_h = (roi_ymax >= roi_ymin) ? (roi_ymax - roi_ymin + 1'b1) : {YW{1'b0}};

    // in-ROI check (combinational at pixel)
    wire in_roi_x = (pixel_x >= roi_xmin) && (pixel_x <= roi_xmax);
    wire in_roi_y = (pixel_y >= roi_ymin) && (pixel_y <= roi_ymax);
    wire in_roi   = in_roi_x && in_roi_y && roi_valid_frame && crop_enable;

    // Compute column/row inside ROI (safe when in_roi=1)
    wire [XW-1:0] local_col = pixel_x - roi_xmin;
    wire [YW-1:0] local_row = pixel_y - roi_ymin;

    // End-of-line/frame flags within ROI
    wire at_line_last  = in_roi && (pixel_x == roi_xmax);
    wire at_frame_last = in_roi && (pixel_x == roi_xmax) && (pixel_y == roi_ymax);

    always @(posedge PCLK or negedge rst_n) begin
        if (!rst_n) begin
            crop_valid      <= 1'b0;
            crop_pixel      <= 8'd0;
            crop_col        <= {XW{1'b0}};
            crop_row        <= {YW{1'b0}};
            crop_line_last  <= 1'b0;
            crop_frame_last <= 1'b0;
        end else begin
            // default deassert
            crop_valid      <= 1'b0;
            crop_line_last  <= 1'b0;
            crop_frame_last <= 1'b0;

            if (pixel_valid && in_roi) begin
                crop_valid <= 1'b1;
                crop_pixel <= pixel_val;
                crop_col   <= local_col;
                crop_row   <= local_row;

                if (at_line_last)  crop_line_last  <= 1'b1;
                if (at_frame_last) crop_frame_last <= 1'b1;
            end
        end
    end

endmodule
