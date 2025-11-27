// pixel_packer_2x8.v
// Packs two consecutive 8-bit pixels (LSB-first) into one 16-bit word.
// Emits 'word16_valid' on the second pixel.
// Passes a single-cycle frame_start_out aligned with the first word of a frame.

module pixel_packer_2x8 (
    input  wire        pclk,
    input  wire        en,              // assert when pixel8 is valid and should be packed
    input  wire [7:0]  pixel8,
    input  wire        frame_start_in,  // 1-cycle at start of frame (PCLK domain)

    output reg         word16_valid,
    output reg  [15:0] word16,
    output reg         frame_start_out  // 1-cycle aligned to first emitted word of frame
);

    reg toggle;
    reg [7:0] hold;

    reg fs_d;  // delay to align frame_start with output
    always @(posedge pclk) begin
        frame_start_out <= 1'b0;
        word16_valid    <= 1'b0;

        if (frame_start_in) begin
            // reset phase so first pair after frame_start packs cleanly
            toggle <= 1'b0;
            fs_d   <= 1'b1; // mark that the next emitted word is the first of frame
        end

        if (en) begin
            if (!toggle) begin
                hold   <= pixel8;
                toggle <= 1'b1;
            end else begin
                word16        <= {hold, pixel8}; // first pixel in high byte
                word16_valid  <= 1'b1;
                if (fs_d) begin
                    frame_start_out <= 1'b1;
                    fs_d            <= 1'b0;
                end
                toggle <= 1'b0;
            end
        end
    end
endmodule
