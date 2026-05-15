module sdram_single_req_probe #(
    parameter [21:0] TEST_ADDR = 22'd0,
    parameter [15:0] TEST_PATTERN = 16'h00ff,
    parameter [15:0] COMPARE_MASK = 16'hffbf,
    parameter integer TEST_COUNT = 16,
    parameter integer START_DELAY_CYCLES = 64,
    parameter integer WRITE_READ_GAP_CYCLES = 128,
    parameter integer TIMEOUT_CYCLES = 1000000
) (
    input  wire        clk,
    input  wire        rst,
    input  wire        init_done,
    output reg         wr_req,
    output reg  [21:0] wr_addr,
    output reg  [15:0] wr_data,
    input  wire        wr_ack,
    output reg         rd_req,
    output reg  [21:0] rd_addr,
    input  wire        rd_ack,
    input  wire [15:0] rd_data,
    output reg         running,
    output reg         pass_seen,
    output reg         fail_seen,
    output reg  [15:0] error_count,
    output reg  [31:0] write_count,
    output reg  [31:0] read_count,
    output reg  [31:0] pass_count,
    output reg  [21:0] first_bad_addr,
    output reg  [15:0] first_bad_expected,
    output reg  [15:0] first_bad_actual,
    output reg  [1:0]  first_bad_byte_mask,
    output wire [3:0]  debug_state,
    output wire [3:0]  debug_idx,
    output wire [7:0]  debug_write_low,
    output wire [7:0]  debug_read_low,
    output wire [7:0]  debug_events,
    output wire [1:0]  debug_req,
    output wire [5:0]  status_sym
);
    localparam [3:0] ST_WAIT_INIT = 4'd0;
    localparam [3:0] ST_START_GAP = 4'd1;
    localparam [3:0] ST_WRITE     = 4'd2;
    localparam [3:0] ST_WR_GAP    = 4'd3;
    localparam [3:0] ST_READ      = 4'd4;
    localparam [3:0] ST_DONE      = 4'd5;
    localparam [3:0] ST_TIMEOUT   = 4'd6;
    localparam [3:0] LAST_INDEX =
        (TEST_COUNT <= 1) ? 4'd0 :
        ((TEST_COUNT >= 16) ? 4'd15 : (TEST_COUNT - 1));

    reg [3:0] state;
    reg [3:0] index;
    reg [23:0] delay_count;
    reg [23:0] wait_count;
    reg [7:0] event_flags;

    wire [21:0] current_addr = TEST_ADDR + {18'd0, index};
    wire [15:0] current_pattern = pattern_for(index);
    wire [15:0] masked_actual = rd_data & COMPARE_MASK;
    wire [15:0] masked_expected = current_pattern & COMPARE_MASK;

    assign status_sym = {fail_seen, pass_seen, running, first_bad_byte_mask, pass_count[0]};
    assign debug_state = state;
    assign debug_idx = index;
    assign debug_write_low = write_count[7:0];
    assign debug_read_low = read_count[7:0];
    assign debug_events = event_flags;
    assign debug_req = {wr_req, rd_req};

    function [15:0] pattern_for;
        input [3:0] idx;
        begin
            case (idx)
                4'h0: pattern_for = 16'h0000;
                4'h1: pattern_for = 16'h00ff;
                4'h2: pattern_for = 16'hff00;
                4'h3: pattern_for = 16'hffff;
                4'h4: pattern_for = 16'ha500;
                4'h5: pattern_for = 16'h5a00;
                4'h6: pattern_for = 16'h0100;
                4'h7: pattern_for = 16'h0200;
                4'h8: pattern_for = 16'h0400;
                4'h9: pattern_for = 16'h0800;
                4'ha: pattern_for = 16'h1000;
                4'hb: pattern_for = 16'h2000;
                4'hc: pattern_for = 16'h4000;
                4'hd: pattern_for = 16'h8000;
                4'he: pattern_for = 16'h55aa;
                default: pattern_for = 16'haa55;
            endcase
        end
    endfunction

    function [1:0] mismatch_mask;
        input [15:0] actual;
        input [15:0] expected;
        begin
            mismatch_mask[0] = ((actual[7:0] & COMPARE_MASK[7:0]) !=
                                (expected[7:0] & COMPARE_MASK[7:0]));
            mismatch_mask[1] = ((actual[15:8] & COMPARE_MASK[15:8]) !=
                                (expected[15:8] & COMPARE_MASK[15:8]));
        end
    endfunction

    always @(posedge clk) begin
        if (rst || !init_done) begin
            wr_req <= 1'b0;
            wr_addr <= TEST_ADDR;
            wr_data <= pattern_for(4'd0);
            rd_req <= 1'b0;
            rd_addr <= TEST_ADDR;
            running <= 1'b0;
            pass_seen <= 1'b0;
            fail_seen <= 1'b0;
            error_count <= 16'd0;
            write_count <= 32'd0;
            read_count <= 32'd0;
            pass_count <= 32'd0;
            first_bad_addr <= TEST_ADDR;
            first_bad_expected <= pattern_for(4'd0);
            first_bad_actual <= 16'd0;
            first_bad_byte_mask <= 2'b00;
            state <= ST_WAIT_INIT;
            index <= 4'd0;
            delay_count <= 24'd0;
            wait_count <= 24'd0;
            event_flags <= 8'd0;
        end else begin
            event_flags[0] <= 1'b1;
            if (wr_ack)
                event_flags[2] <= 1'b1;
            if (rd_ack)
                event_flags[5] <= 1'b1;

            if ((wr_req && !wr_ack) || (rd_req && !rd_ack)) begin
                if (wait_count != 24'hffffff)
                    wait_count <= wait_count + 24'd1;
            end else begin
                wait_count <= 24'd0;
            end

            if (((wr_req && !wr_ack) || (rd_req && !rd_ack)) &&
                (wait_count >= TIMEOUT_CYCLES[23:0]) &&
                !pass_seen && !fail_seen) begin
                wr_req <= 1'b0;
                rd_req <= 1'b0;
                running <= 1'b0;
                fail_seen <= 1'b1;
                error_count <= 16'd1;
                first_bad_addr <= current_addr;
                first_bad_expected <= current_pattern;
                first_bad_actual <= {8'hf0, state, event_flags[3:0]};
                first_bad_byte_mask <= 2'b11;
                event_flags[7] <= 1'b1;
                state <= ST_TIMEOUT;
            end else begin
                case (state)
                    ST_WAIT_INIT: begin
                        wr_req <= 1'b0;
                        rd_req <= 1'b0;
                        running <= 1'b1;
                        index <= 4'd0;
                        delay_count <= START_DELAY_CYCLES[23:0];
                        state <= ST_START_GAP;
                    end

                    ST_START_GAP: begin
                        running <= 1'b1;
                        if (delay_count == 24'd0) begin
                            wr_addr <= current_addr;
                            wr_data <= current_pattern;
                            wr_req <= 1'b1;
                            event_flags[1] <= 1'b1;
                            state <= ST_WRITE;
                        end else begin
                            delay_count <= delay_count - 24'd1;
                        end
                    end

                    ST_WRITE: begin
                        running <= 1'b1;
                        wr_addr <= current_addr;
                        wr_data <= current_pattern;
                        if (wr_ack) begin
                            wr_req <= 1'b0;
                            write_count <= write_count + 32'd1;
                            delay_count <= WRITE_READ_GAP_CYCLES[23:0];
                            event_flags[3] <= 1'b1;
                            state <= ST_WR_GAP;
                        end else begin
                            wr_req <= 1'b1;
                        end
                    end

                    ST_WR_GAP: begin
                        running <= 1'b1;
                        if (delay_count == 24'd0) begin
                            rd_addr <= current_addr;
                            rd_req <= 1'b1;
                            event_flags[4] <= 1'b1;
                            state <= ST_READ;
                        end else begin
                            delay_count <= delay_count - 24'd1;
                        end
                    end

                    ST_READ: begin
                        running <= 1'b1;
                        rd_addr <= current_addr;
                        if (rd_ack) begin
                            rd_req <= 1'b0;
                            read_count <= read_count + 32'd1;
                            first_bad_addr <= current_addr;
                            first_bad_expected <= current_pattern;
                            first_bad_actual <= rd_data;
                            if (masked_actual == masked_expected) begin
                                fail_seen <= 1'b0;
                                pass_count <= pass_count + 32'd1;
                                first_bad_byte_mask <= 2'b00;
                                event_flags[6] <= 1'b1;
                                if (index == LAST_INDEX) begin
                                    pass_seen <= 1'b1;
                                    running <= 1'b0;
                                    event_flags[7] <= 1'b1;
                                    state <= ST_DONE;
                                end else begin
                                    index <= index + 4'd1;
                                    delay_count <= WRITE_READ_GAP_CYCLES[23:0];
                                    state <= ST_START_GAP;
                                end
                            end else begin
                                fail_seen <= 1'b1;
                                error_count <= 16'd1;
                                first_bad_byte_mask <= mismatch_mask(rd_data, current_pattern);
                                event_flags[7] <= 1'b1;
                                running <= 1'b0;
                                state <= ST_DONE;
                            end
                        end else begin
                            rd_req <= 1'b1;
                        end
                    end

                    ST_DONE: begin
                        wr_req <= 1'b0;
                        rd_req <= 1'b0;
                        running <= 1'b0;
                    end

                    ST_TIMEOUT: begin
                        wr_req <= 1'b0;
                        rd_req <= 1'b0;
                        running <= 1'b0;
                    end

                    default: begin
                        state <= ST_WAIT_INIT;
                    end
                endcase
            end
        end
    end
endmodule
