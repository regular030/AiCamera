// sdram_writer.v
// Produces write requests for SDRAM when record_enable is active.
// This does NOT implement the DRAM protocol. It's a front-end producer.

module sdram_writer (
    input  wire        PCLK,
    input  wire        record_enable,   // mode==2
    input  wire        pixel_valid,
    input  wire [11:0] pixel_x,
    input  wire [11:0] pixel_y,
    input  wire [7:0]  pixel_val,

    // out to SDRAM controller "write port"
    output reg         wr_en,
    output reg [23:0]  wr_addr,
    output reg [15:0]  wr_data
);

    // Choose a simple 2D linear address:
    // wr_addr = y * FRAME_STRIDE + x
    // We'll pretend stride is 2048 pixels (2KB per row if 1 byte/pixel).
    // We'll store grayscale duplicated into 16 bits.
    localparam FRAME_STRIDE = 12'd2048; // tune later

    wire [23:0] base_addr = {8'h00, pixel_y} * FRAME_STRIDE + pixel_x; 
    // NOTE: multiply like that isn't synthesizer-friendly unless your tool infers it.
    // In a real design you use (pixel_y << 11) + pixel_x if stride is 2048.
    // Let's do that instead:

    wire [23:0] addr_calc = {pixel_y, 11'b0} + pixel_x; // pixel_y * 2048 + pixel_x

    always @(posedge PCLK) begin
        if (record_enable && pixel_valid) begin
            wr_en   <= 1'b1;
            wr_addr <= addr_calc;
            wr_data <= {pixel_val, pixel_val}; // duplicate grayscale byte into 16 bits
        end else begin
            wr_en   <= 1'b0;
            wr_addr <= 24'd0;
            wr_data <= 16'd0;
        end
    end

endmodule
