// roi_tracker_motion.v
// Simple motion ROI: threshold abs(luma - prevY) heuristic.

module roi_tracker_motion (
    input  wire        pclk,
    input  wire        enable,

    input  wire        pix_valid,
    input  wire [15:0] pix_rgb565,
    input  wire [11:0] pix_x,
    input  wire [11:0] pix_y,

    input  wire        frame_start,
    input  wire        frame_end,

    output reg         roi_valid,
    output reg [11:0]  roi_xmin, roi_xmax,
    output reg [11:0]  roi_ymin, roi_ymax
);
    // RGB565 fields
    wire [4:0] R = pix_rgb565[15:11];
    wire [5:0] G = pix_rgb565[10:5];
    wire [4:0] B = pix_rgb565[4:0];

    // quick luma
    wire [8:0] r2 = {R,1'b0};
    wire [7:0] b1 = {3'b000, B[4:2]};
    wire [9:0] y_approx = (r2 + {4'b0,G}) + {2'b0,b1};
    wire [7:0] Y = y_approx[9:2];

    localparam [7:0] TH = 8'd10;

    // state
    reg [7:0] lastY;
    reg [11:0] minx, maxx, miny, maxy;
    reg [7:0] dy;  // << moved here

    always @(posedge pclk) begin
        if (!enable) begin
            roi_valid <= 1'b0;
        end

        if (frame_start) begin
            minx <= 12'hFFF; miny <= 12'hFFF;
            maxx <= 12'h000; maxy <= 12'h000;
            roi_valid <= 1'b0;
        end

        if (pix_valid) begin
            dy <= (Y >= lastY) ? (Y - lastY) : (lastY - Y);

            if (dy > TH) begin
                if (pix_x < minx) minx <= pix_x;
                if (pix_x > maxx) maxx <= pix_x;
                if (pix_y < miny) miny <= pix_y;
                if (pix_y > maxy) maxy <= pix_y;
                roi_valid <= 1'b1;
            end

            lastY <= Y;
        end

        if (frame_end) begin
            roi_xmin <= (roi_valid) ? minx : 12'd0;
            roi_xmax <= (roi_valid) ? maxx : 12'd0;
            roi_ymin <= (roi_valid) ? miny : 12'd0;
            roi_ymax <= (roi_valid) ? maxy : 12'd0;
        end
    end
endmodule
