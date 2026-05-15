module sdram_stress_tester #(
    parameter integer TEST_AW = 15,
    parameter PROBE_MODE = 1'b0,
    parameter PROBE_IMMEDIATE = 1'b1,
    parameter integer PROBE_ADDR_SHIFT = 0,
    parameter ALIAS_ZERO_PROBE = 1'b0,
    parameter SCRUB_READ_PROBE = 1'b0,
    parameter [15:0] SCRUB_PATTERN = 16'hff00,
    parameter [15:0] COMPARE_MASK = 16'hffff,
    parameter [21:0] SCRUB_REPORT_ADDR = 22'd0
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
    localparam [3:0] ST_WAIT     = 4'd0;
    localparam [3:0] ST_WRITE    = 4'd1;
    localparam [3:0] ST_READ     = 4'd2;
    localparam [3:0] ST_AZ_CLEAR = 4'd3;
    localparam [3:0] ST_AZ_WRITE = 4'd4;
    localparam [3:0] ST_AZ_READ0 = 4'd5;
    localparam [3:0] ST_SR_CLEAR = 4'd6;
    localparam [3:0] ST_SR_WRITE = 4'd7;
    localparam [3:0] ST_SR_SCRUB = 4'd8;
    localparam [3:0] ST_SR_READ  = 4'd9;
    localparam [3:0] ST_WR_GAP   = 4'd10;
    localparam [3:0] ST_RD_GAP   = 4'd11;

    reg [3:0] state;
    reg [3:0] debug_state_r;
    reg [TEST_AW-1:0] idx;
    reg [7:0] pass_seed;
    reg [7:0] event_flags;
    reg [23:0] wait_count;

    wire wait_active = (wr_req && !wr_ack) || (rd_req && !rd_ack);

    function [21:0] phys_addr;
        input [TEST_AW-1:0] i;
        reg [14:0] e;
        begin
            if (PROBE_MODE) begin
                phys_addr = {{(22-TEST_AW){1'b0}}, i} << PROBE_ADDR_SHIFT;
            end else begin
                e = i;
                phys_addr = {e[1:0], e[14:2], e[6:0]};
            end
        end
    endfunction

    function [15:0] pattern_for;
        input [21:0] addr;
        input [7:0] seed;
        begin
            if (PROBE_MODE) begin
                case (addr[3:0])
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
            end else begin
                pattern_for = addr[15:0] ^ {addr[21:16], addr[9:0]} ^ {seed, ~seed};
            end
        end
    endfunction

    wire [21:0] current_addr = phys_addr(idx);
    wire [15:0] current_pattern = pattern_for(current_addr, pass_seed);
    wire [15:0] scrub_pattern = SCRUB_PATTERN;
    wire at_last = &idx;

    assign status_sym = {fail_seen, pass_seen, running, first_bad_byte_mask, pass_count[0]};
    assign debug_state = debug_state_r;
    assign debug_idx = idx[3:0];
    assign debug_write_low = write_count[7:0];
    assign debug_read_low = read_count[7:0];
    assign debug_events = event_flags;
    assign debug_req = {wr_req, rd_req};

    always @(posedge clk) begin
        if (rst || !init_done) begin
            wr_req <= 1'b0;
            wr_addr <= 22'd0;
            wr_data <= 16'd0;
            rd_req <= 1'b0;
            rd_addr <= 22'd0;
            running <= 1'b0;
            pass_seen <= 1'b0;
            fail_seen <= 1'b0;
            error_count <= 16'd0;
            write_count <= 32'd0;
            read_count <= 32'd0;
            pass_count <= 32'd0;
            first_bad_addr <= 22'd0;
            first_bad_expected <= 16'd0;
            first_bad_actual <= 16'd0;
            first_bad_byte_mask <= 2'b00;
            state <= SCRUB_READ_PROBE ? ST_SR_CLEAR : (ALIAS_ZERO_PROBE ? ST_AZ_CLEAR : ST_WAIT);
            debug_state_r <= SCRUB_READ_PROBE ? ST_SR_CLEAR : (ALIAS_ZERO_PROBE ? ST_AZ_CLEAR : ST_WAIT);
            idx <= ALIAS_ZERO_PROBE ? {{(TEST_AW-1){1'b0}}, 1'b1} : {TEST_AW{1'b0}};
            pass_seed <= 8'h5a;
            event_flags <= 8'd0;
            wait_count <= 24'd0;
        end else begin
            event_flags[0] <= 1'b1;
            if (wr_ack)
                event_flags[4] <= 1'b1;
            if (rd_ack)
                event_flags[6] <= 1'b1;
            if (wait_active)
                wait_count <= wait_count + 24'd1;
            else
                wait_count <= 24'd0;

            if (wait_active && (wait_count == 24'hffffff) && !fail_seen) begin
                wr_req <= 1'b0;
                rd_req <= 1'b0;
                running <= 1'b0;
                fail_seen <= 1'b1;
                error_count <= 16'd1;
                first_bad_addr <= current_addr;
                first_bad_expected <= 16'hace1;
                first_bad_actual <= {4'd0, state, idx[3:0], event_flags[7:0]};
                first_bad_byte_mask <= 2'b11;
                state <= ST_WAIT;
                debug_state_r <= ST_WAIT;
            end else begin
            if (ALIAS_ZERO_PROBE && !fail_seen) begin
                first_bad_addr <= current_addr;
                first_bad_actual <= {4'd0, state, idx[3:0], read_count[3:0]};
                first_bad_expected <= {write_count[7:0], read_count[7:0]};
                first_bad_byte_mask <= 2'b00;
            end
            case (state)
                ST_WAIT: begin
                    debug_state_r <= ST_WAIT;
                    wr_req <= 1'b0;
                    rd_req <= 1'b0;
                    running <= 1'b0;
                    idx <= {TEST_AW{1'b0}};
                    if (!pass_seen && !fail_seen) begin
                        if (SCRUB_READ_PROBE) begin
                            idx <= {TEST_AW{1'b0}};
                            state <= ST_SR_CLEAR;
                        end else if (ALIAS_ZERO_PROBE) begin
                            idx <= {{(TEST_AW-1){1'b0}}, 1'b1};
                            state <= ST_AZ_CLEAR;
                        end else begin
                            state <= ST_WRITE;
                        end
                    end
                end

                ST_SR_CLEAR: begin
                    debug_state_r <= ST_SR_CLEAR;
                    event_flags[1] <= 1'b1;
                    running <= 1'b1;
                    idx <= {TEST_AW{1'b0}};
                    rd_req <= 1'b0;
                    wr_req <= 1'b1;
                    wr_addr <= {22{1'b0}};
                    wr_data <= 16'h0000;
                    if (wr_ack) begin
                        event_flags[4] <= 1'b1;
                        write_count <= write_count + 32'd1;
                        wr_req <= 1'b0;
                        state <= ST_SR_WRITE;
                    end
                end

                ST_SR_WRITE: begin
                    debug_state_r <= ST_SR_WRITE;
                    event_flags[2] <= 1'b1;
                    running <= 1'b1;
                    rd_req <= 1'b0;
                    wr_req <= 1'b1;
                    wr_addr <= {22{1'b0}};
                    wr_data <= scrub_pattern;
                    if (wr_ack) begin
                        event_flags[4] <= 1'b1;
                        write_count <= write_count + 32'd1;
                        wr_req <= 1'b0;
                        state <= ST_SR_READ;
                    end
                end

                ST_SR_SCRUB: begin
                    debug_state_r <= ST_SR_SCRUB;
                    running <= 1'b1;
                    rd_req <= 1'b0;
                    wr_req <= 1'b1;
                    wr_addr <= 22'd2;
                    wr_data <= 16'h0000;
                    if (wr_ack) begin
                        event_flags[4] <= 1'b1;
                        write_count <= write_count + 32'd1;
                        wr_req <= 1'b0;
                        state <= ST_SR_READ;
                    end
                end

                ST_SR_READ: begin
                    debug_state_r <= ST_SR_READ;
                    event_flags[3] <= 1'b1;
                    event_flags[5] <= 1'b1;
                    running <= 1'b1;
                    wr_req <= 1'b0;
                    rd_req <= 1'b1;
                    rd_addr <= {22{1'b0}};
                    if (rd_ack) begin
                        event_flags[6] <= 1'b1;
                        read_count <= read_count + 32'd1;
                        rd_req <= 1'b0;
                        if ((rd_data & COMPARE_MASK) != (scrub_pattern & COMPARE_MASK)) begin
                            fail_seen <= 1'b1;
                            running <= 1'b0;
                            if (error_count != 16'hffff)
                                error_count <= error_count + 16'd1;
                            if (error_count == 16'd0) begin
                                first_bad_addr <= SCRUB_REPORT_ADDR;
                                first_bad_expected <= scrub_pattern;
                                first_bad_actual <= rd_data;
                                first_bad_byte_mask <= {
                                    (rd_data[15:8] & COMPARE_MASK[15:8]) != (scrub_pattern[15:8] & COMPARE_MASK[15:8]),
                                    (rd_data[7:0] & COMPARE_MASK[7:0]) != (scrub_pattern[7:0] & COMPARE_MASK[7:0])
                                };
                            end
                            state <= ST_WAIT;
                        end else begin
                            event_flags[7] <= 1'b1;
                            pass_seen <= (error_count == 16'd0);
                            running <= 1'b0;
                            pass_count <= pass_count + 32'd1;
                            pass_seed <= pass_seed + 8'h3d;
                            state <= ST_WAIT;
                        end
                    end
                end

                ST_AZ_CLEAR: begin
                    debug_state_r <= ST_AZ_CLEAR;
                    event_flags[1] <= 1'b1;
                    running <= 1'b1;
                    rd_req <= 1'b0;
                    wr_req <= 1'b1;
                    wr_addr <= {22{1'b0}};
                    wr_data <= 16'h0000;
                    if (wr_ack) begin
                        event_flags[4] <= 1'b1;
                        write_count <= write_count + 32'd1;
                        wr_req <= 1'b0;
                        state <= ST_AZ_WRITE;
                    end
                end

                ST_AZ_WRITE: begin
                    debug_state_r <= ST_AZ_WRITE;
                    event_flags[2] <= 1'b1;
                    running <= 1'b1;
                    rd_req <= 1'b0;
                    wr_req <= 1'b1;
                    wr_addr <= PROBE_MODE ? 22'd0 : current_addr;
                    wr_data <= current_pattern;
                    if (wr_ack) begin
                        event_flags[4] <= 1'b1;
                        write_count <= write_count + 32'd1;
                        wr_req <= 1'b0;
                        state <= ST_AZ_READ0;
                    end
                end

                ST_AZ_READ0: begin
                    debug_state_r <= ST_AZ_READ0;
                    event_flags[3] <= 1'b1;
                    event_flags[5] <= 1'b1;
                    running <= 1'b1;
                    wr_req <= 1'b0;
                    rd_req <= 1'b1;
                    rd_addr <= {22{1'b0}};
                    if (rd_ack) begin
                        event_flags[6] <= 1'b1;
                        read_count <= read_count + 32'd1;
                        rd_req <= 1'b0;
                        if ((rd_data & COMPARE_MASK) != 16'h0000) begin
                            fail_seen <= 1'b1;
                            running <= 1'b0;
                            if (error_count != 16'hffff)
                                error_count <= error_count + 16'd1;
                            if (error_count == 16'd0) begin
                                first_bad_addr <= current_addr;
                                first_bad_expected <= 16'h0000;
                                first_bad_actual <= rd_data;
                                first_bad_byte_mask <= {
                                    (rd_data[15:8] & COMPARE_MASK[15:8]) != 8'h00,
                                    (rd_data[7:0] & COMPARE_MASK[7:0]) != 8'h00
                                };
                            end
                            state <= ST_WAIT;
                        end else if (at_last) begin
                            event_flags[7] <= 1'b1;
                            pass_seen <= (error_count == 16'd0);
                            running <= 1'b0;
                            pass_count <= pass_count + 32'd1;
                            pass_seed <= pass_seed + 8'h3d;
                            idx <= {{(TEST_AW-1){1'b0}}, 1'b1};
                            state <= ST_WAIT;
                        end else begin
                            idx <= idx + {{(TEST_AW-1){1'b0}}, 1'b1};
                            state <= ST_AZ_CLEAR;
                        end
                    end
                end

                ST_WRITE: begin
                    debug_state_r <= ST_WRITE;
                    event_flags[1] <= 1'b1;
                    running <= 1'b1;
                    rd_req <= 1'b0;
                    wr_req <= 1'b1;
                    wr_addr <= PROBE_MODE ? 22'd0 : current_addr;
                    wr_data <= current_pattern;
                    if (wr_ack) begin
                        event_flags[4] <= 1'b1;
                        write_count <= write_count + 32'd1;
                        wr_req <= 1'b0;
                        if (PROBE_MODE && PROBE_IMMEDIATE) begin
                            state <= ST_WR_GAP;
                        end else begin
                            if (at_last) begin
                                idx <= {TEST_AW{1'b0}};
                                state <= ST_READ;
                            end else begin
                                idx <= idx + {{(TEST_AW-1){1'b0}}, 1'b1};
                            end
                        end
                    end
                end

                ST_WR_GAP: begin
                    debug_state_r <= ST_WR_GAP;
                    running <= 1'b1;
                    wr_req <= 1'b0;
                    rd_req <= 1'b0;
                    if (!wr_ack)
                        state <= ST_READ;
                end

                ST_READ: begin
                    debug_state_r <= ST_READ;
                    event_flags[3] <= 1'b1;
                    event_flags[5] <= 1'b1;
                    running <= 1'b1;
                    wr_req <= 1'b0;
                    rd_req <= 1'b1;
                    rd_addr <= PROBE_MODE ? 22'd0 : current_addr;
                    if (rd_ack) begin
                        event_flags[6] <= 1'b1;
                        read_count <= read_count + 32'd1;
                        rd_req <= 1'b0;
                        if ((rd_data & COMPARE_MASK) != (current_pattern & COMPARE_MASK)) begin
                            fail_seen <= 1'b1;
                            running <= 1'b0;
                            if (error_count != 16'hffff)
                                error_count <= error_count + 16'd1;
                            if (error_count == 16'd0) begin
                                first_bad_addr <= current_addr;
                                first_bad_expected <= current_pattern;
                                first_bad_actual <= rd_data;
                            first_bad_byte_mask <= {
                                (rd_data[15:8] & COMPARE_MASK[15:8]) != (current_pattern[15:8] & COMPARE_MASK[15:8]),
                                (rd_data[7:0] & COMPARE_MASK[7:0]) != (current_pattern[7:0] & COMPARE_MASK[7:0])
                            };
                            end
                            state <= ST_WAIT;
                        end else if (at_last) begin
                            event_flags[7] <= 1'b1;
                            pass_seen <= (error_count == 16'd0);
                            running <= 1'b0;
                            pass_count <= pass_count + 32'd1;
                            pass_seed <= pass_seed + 8'h3d;
                            idx <= {TEST_AW{1'b0}};
                            state <= ST_WAIT;
                        end else begin
                            idx <= idx + {{(TEST_AW-1){1'b0}}, 1'b1};
                            if (PROBE_MODE && PROBE_IMMEDIATE)
                                state <= ST_RD_GAP;
                        end
                    end
                end

                ST_RD_GAP: begin
                    debug_state_r <= ST_RD_GAP;
                    running <= 1'b1;
                    wr_req <= 1'b0;
                    rd_req <= 1'b0;
                    if (!rd_ack)
                        state <= ST_WRITE;
                end

                default: begin
                    debug_state_r <= ST_WAIT;
                    state <= ST_WAIT;
                end
            endcase
            end
        end
    end
endmodule
