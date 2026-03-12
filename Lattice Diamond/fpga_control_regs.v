`timescale 1ns/1ps

module fpga_control_regs (
    input  wire        clk,
    input  wire        rst_n,
    input  wire        cmd_valid,
    input  wire [7:0]  cmd_opcode,
    input  wire [31:0] cmd_arg,
    input  wire [7:0]  cmd_seq,
    output reg         capture_enable,
    output reg  [1:0]  mode,
    output reg  [7:0]  frame_stride,
    output reg         clear_counts_pulse,
    output reg         snapshot_pulse,
    output reg         ack_valid,
    output reg  [7:0]  ack_type,
    output reg  [31:0] ack_value,
    output reg  [7:0]  ack_seq
);
    localparam [7:0] OP_PING         = 8'h01;
    localparam [7:0] OP_SET_CAPTURE  = 8'h10;
    localparam [7:0] OP_SET_MODE     = 8'h11;
    localparam [7:0] OP_SET_STRIDE   = 8'h12;
    localparam [7:0] OP_CLEAR_COUNTS = 8'h13;
    localparam [7:0] OP_SNAPSHOT     = 8'h14;
    localparam [7:0] OP_GET_STATUS   = 8'h20;

    localparam [7:0] ACK_OK          = 8'h80;
    localparam [7:0] ACK_ERR         = 8'h81;
    localparam [7:0] ACK_STATUS      = 8'h82;
    localparam [7:0] ACK_PONG        = 8'h83;

    always @(posedge clk) begin
        if (!rst_n) begin
            capture_enable     <= 1'b0;
            mode               <= 2'd0;
            frame_stride       <= 8'd1;
            clear_counts_pulse <= 1'b0;
            snapshot_pulse     <= 1'b0;
            ack_valid          <= 1'b0;
            ack_type           <= 8'd0;
            ack_value          <= 32'd0;
            ack_seq            <= 8'd0;
        end else begin
            clear_counts_pulse <= 1'b0;
            snapshot_pulse     <= 1'b0;
            ack_valid          <= 1'b0;

            if (cmd_valid) begin
                ack_seq <= cmd_seq;
                case (cmd_opcode)
                    OP_PING: begin
                        ack_valid <= 1'b1;
                        ack_type  <= ACK_PONG;
                        ack_value <= 32'h50494E47;
                    end
                    OP_SET_CAPTURE: begin
                        capture_enable <= cmd_arg[0];
                        ack_valid <= 1'b1;
                        ack_type  <= ACK_OK;
                        ack_value <= {31'd0, cmd_arg[0]};
                    end
                    OP_SET_MODE: begin
                        mode <= cmd_arg[1:0];
                        ack_valid <= 1'b1;
                        ack_type  <= ACK_OK;
                        ack_value <= {30'd0, cmd_arg[1:0]};
                    end
                    OP_SET_STRIDE: begin
                        frame_stride <= (cmd_arg[7:0] == 8'd0) ? 8'd1 : cmd_arg[7:0];
                        ack_valid <= 1'b1;
                        ack_type  <= ACK_OK;
                        ack_value <= {24'd0, ((cmd_arg[7:0] == 8'd0) ? 8'd1 : cmd_arg[7:0])};
                    end
                    OP_CLEAR_COUNTS: begin
                        clear_counts_pulse <= 1'b1;
                        ack_valid <= 1'b1;
                        ack_type  <= ACK_OK;
                        ack_value <= 32'd0;
                    end
                    OP_SNAPSHOT: begin
                        snapshot_pulse <= 1'b1;
                        ack_valid <= 1'b1;
                        ack_type  <= ACK_OK;
                        ack_value <= 32'd0;
                    end
                    OP_GET_STATUS: begin
                        ack_valid <= 1'b1;
                        ack_type  <= ACK_STATUS;
                        ack_value <= {20'd0, frame_stride, 2'd0, mode, capture_enable};
                    end
                    default: begin
                        ack_valid <= 1'b1;
                        ack_type  <= ACK_ERR;
                        ack_value <= 32'hBADC0DE0;
                    end
                endcase
            end
        end
    end
endmodule
