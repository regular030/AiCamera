module fpga_cmd_rx (
    input  wire clk,
    input  wire rst,
    input  wire rx_valid,
    input  wire [7:0] rx_data,
    output reg        capture_enable,
    output reg [7:0]  mode,
    output reg [7:0]  stride,
    output reg        clear_counts_pulse,
    output reg        snapshot_pulse,
    output reg        snapshot_pattern,
    output reg        status_pulse
);
    localparam SYNC = 8'hA5;
    localparam OP_SET_CAPTURE  = 8'h10;
    localparam OP_SET_MODE     = 8'h11;
    localparam OP_SET_STRIDE   = 8'h12;
    localparam OP_CLEAR_COUNTS = 8'h13;
    localparam OP_SNAPSHOT     = 8'h14;
    localparam OP_GET_STATUS   = 8'h20;

    reg [2:0] idx;
    reg [7:0] pkt [0:7];
    reg [7:0] checksum;
    integer i;

    always @(posedge clk) begin
        if (rst) begin
            idx <= 0; capture_enable <= 0; mode <= 0; stride <= 0;
            clear_counts_pulse <= 0; snapshot_pulse <= 0; snapshot_pattern <= 0; status_pulse <= 0;
            for (i=0;i<8;i=i+1) pkt[i] <= 0;
        end else begin
            clear_counts_pulse <= 0;
            snapshot_pulse <= 0;
            status_pulse <= 0;
            if (rx_valid) begin
                if (idx == 0) begin
                    if (rx_data == SYNC) begin
                        pkt[0] <= rx_data;
                        idx <= 1;
                    end
                end else begin
                    pkt[idx] <= rx_data;
                    if (idx == 3'd7) begin
                        checksum = pkt[0]^pkt[1]^pkt[2]^pkt[3]^pkt[4]^pkt[5]^pkt[6];
                        if (checksum == rx_data) begin
                            case (pkt[1])
                                OP_SET_CAPTURE:  capture_enable <= pkt[2][0];
                                OP_SET_MODE:     mode <= pkt[2];
                                OP_SET_STRIDE:   stride <= pkt[2];
                                OP_CLEAR_COUNTS: clear_counts_pulse <= 1'b1;
                                OP_SNAPSHOT: begin
                                    snapshot_pattern <= pkt[2][0];
                                    snapshot_pulse <= 1'b1;
                                end
                                OP_GET_STATUS:   status_pulse <= 1'b1;
                                default: ;
                            endcase
                        end
                        idx <= 0;
                    end else idx <= idx + 1'b1;
                end
            end
        end
    end
endmodule
