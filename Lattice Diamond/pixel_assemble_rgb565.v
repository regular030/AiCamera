// pixel_assemble_rgb565.v
module pixel_assemble_rgb565 (
    input  wire        pclk,
    input  wire        vsync,
    input  wire        href,
    input  wire [7:0]  d8,          // camera D7..D0

    output reg         pix_valid,
    output reg [15:0]  pix_rgb565,
    output reg [11:0]  pix_x,
    output reg [11:0]  pix_y,
    output reg         frame_start,
    output reg         frame_end,
    output reg         line_end
);
    reg byte_sel;       // 0=first byte, 1=second byte
    reg [7:0] byte0;

    always @(posedge pclk) begin
        pix_valid   <= 1'b0;
        frame_start <= 1'b0;
        frame_end   <= 1'b0;
        line_end    <= 1'b0;

        if (vsync) begin
            // new frame starts on rising VSYNC (sensor-dependent; adjust if needed)
            pix_x      <= 12'd0;
            pix_y      <= 12'd0;
            byte_sel   <= 1'b0;
            frame_start<= 1'b1;
        end else if (href) begin
            // active line
            if (!byte_sel) begin
                byte0   <= d8;
                byte_sel<= 1'b1;
            end else begin
                pix_rgb565 <= {byte0, d8}; // RGB565 high byte first (sensor dependent)
                pix_valid  <= 1'b1;
                byte_sel   <= 1'b0;

                // advance X per pixel
                pix_x <= pix_x + 12'd1;
            end
        end else begin
            // end of line
            if (pix_x != 0) begin
                line_end <= 1'b1;
                pix_x    <= 12'd0;
                pix_y    <= pix_y + 12'd1;
            end
        end
    end
endmodule
