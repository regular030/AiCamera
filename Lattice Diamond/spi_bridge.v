// spi_bridge.v
// Mode-0-like SPI slave: 0x00 READ_STATUS, 0x01 READ_ROI, 0x02 SET_MODE, 0x04 STREAM_ROI

module spi_bridge (
    input  wire        CCLK,
    input  wire        SSPI_CS_n,
    input  wire        DIN,
    output reg         DOUT,

    output reg  [1:0]  mode_req,

    input  wire        roi_valid_frame,
    input  wire [11:0] roi_xmin,
    input  wire [11:0] roi_xmax,
    input  wire [11:0] roi_ymin,
    input  wire [11:0] roi_ymax,

    // ROI stream FIFO from capture side
    output wire        stream_rd_en,
    input  wire [7:0]  stream_rd_data,
    input  wire        stream_empty,
    output reg         stream_arm
);
    // Shift state
    reg [7:0] shift_in, shift_out, rx_byte;
    reg [2:0] bit_cnt;
    reg [3:0] byte_phase;
    reg [7:0] cmd;

    // Status bytes
    wire [7:0] status_b0 = {5'b00000, (mode_req==2'd2), (mode_req!=2'd0), roi_valid_frame};
    wire [7:0] status_b1 = {6'b000000, mode_req};

    // ROI bytes
    wire [7:0] roi_xmin_lo = roi_xmin[7:0];
    wire [7:0] roi_xmin_hi = {4'b0000, roi_xmin[11:8]};
    wire [7:0] roi_xmax_lo = roi_xmax[7:0];
    wire [7:0] roi_xmax_hi = {4'b0000, roi_xmax[11:8]};
    wire [7:0] roi_ymin_lo = roi_ymin[7:0];
    wire [7:0] roi_ymin_hi = {4'b0000, roi_ymin[11:8]};
    wire [7:0] roi_ymax_lo = roi_ymax[7:0];
    wire [7:0] roi_ymax_hi = {4'b0000, roi_ymax[11:8]};

    // Pop one byte per new SPI byte when streaming
    assign stream_rd_en = (!SSPI_CS_n) && (cmd == 8'h04) && (bit_cnt == 3'd0);

    // Output byte mux for non-stream commands
    reg [7:0] out_byte;

    always @(*) begin
        out_byte = 8'h00;
        if (cmd == 8'h00) begin
            case (byte_phase)
                4'd1: out_byte = status_b0;
                4'd2: out_byte = status_b1;
                default: out_byte = 8'h00;
            endcase
        end else if (cmd == 8'h01) begin
            case (byte_phase)
                4'd1: out_byte = roi_xmin_lo;
                4'd2: out_byte = roi_xmin_hi;
                4'd3: out_byte = roi_xmax_lo;
                4'd4: out_byte = roi_xmax_hi;
                4'd5: out_byte = roi_ymin_lo;
                4'd6: out_byte = roi_ymin_hi;
                4'd7: out_byte = roi_ymax_lo;
                4'd8: out_byte = roi_ymax_hi;
                default: out_byte = 8'h00;
            endcase
        end else if (cmd == 8'h04) begin
            // bytes come directly from FIFO; loaded in shift stage
            out_byte = stream_empty ? 8'h00 : stream_rd_data;
        end else begin
            out_byte = 8'h00;
        end
    end

    // SPI shift
    always @(posedge CCLK or negedge SSPI_CS_n) begin
        if (!SSPI_CS_n) begin
            bit_cnt    <= 3'd0;
            byte_phase <= 4'd0;
            cmd        <= 8'h00;
            shift_in   <= 8'h00;
            shift_out  <= 8'h00;
            DOUT       <= 1'b0;
            rx_byte    <= 8'h00;
            stream_arm <= 1'b0;
            mode_req   <= 2'd0;
        end else begin
            // Load MISO at start of each byte
            if (bit_cnt == 3'd0) begin
                shift_out <= (cmd == 8'h04) ? (stream_empty ? 8'h00 : stream_rd_data)
                                            : out_byte;
            end else begin
                shift_out <= {shift_out[6:0], 1'b0};
            end

            // Shift in MOSI
            shift_in <= {shift_in[6:0], DIN};
            bit_cnt  <= bit_cnt + 3'd1;

            // Drive MISO MSB-first
            DOUT <= shift_out[7];

            // Completed a byte?
            if (bit_cnt == 3'd7) begin
                rx_byte <= {shift_in[6:0], DIN};

                if (byte_phase == 4'd0) begin
                    // first byte = command
                    cmd        <= {shift_in[6:0], DIN};
                    byte_phase <= 4'd1;

                    // Auto-arm streamer when we receive STREAM_ROI (8'h04)
                    if ({shift_in[6:0], DIN} == 8'h04) begin
                        stream_arm <= 1'b1;
                    end
                end else begin
                    // Advance phase for read-type cmds
                    if ((cmd == 8'h00) || (cmd == 8'h01) || (cmd == 8'h04))
                        byte_phase <= byte_phase + 4'd1;

                    // SET_MODE payload (one byte)
                    if ((cmd == 8'h02) && (byte_phase == 4'd1)) begin
                        mode_req <= rx_byte[1:0];
                    end
                end
            end
        end
    end
endmodule
