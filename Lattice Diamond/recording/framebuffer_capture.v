module framebuffer_capture #(
    parameter integer FRAME_WORDS = 307200
) (
    input  wire        clk,
    input  wire        rst,
    input  wire        capture_enable,
    input  wire        clear_counts_pulse,
    input  wire        frame_start_toggle,
    input  wire        frame_done_toggle,
    input  wire [15:0] fifo_rd_data,
    input  wire        fifo_empty,
    output reg         fifo_rd_en,
    output reg         wr_req,
    output reg  [21:0] wr_addr,
    output reg  [15:0] wr_data,
    input  wire        wr_ack,
    output reg         frame_ready,
    output reg  [21:0] words_written,
    output reg         capture_arm_pulse,
    output reg         frame_start_pulse,
    output reg         frame_done_pulse
);
    reg fs_sync0, fs_sync1, fs_sync2;
    reg fd_sync0, fd_sync1, fd_sync2;
    reg [1:0] state;
    reg active;
    reg frame_done_seen;
    reg [21:0] addr_ctr;
    reg [15:0] hold_data;

    localparam [21:0] FRAME_WORDS_U = FRAME_WORDS;

    localparam S_IDLE  = 2'd0;
    localparam S_POP   = 2'd1;
    localparam S_WRITE = 2'd2;

    wire frame_start_evt = (fs_sync1 != fs_sync2);
    wire frame_done_evt  = (fd_sync1 != fd_sync2);

    always @(posedge clk) begin
        if (rst) begin
            fs_sync0 <= 1'b0;
            fs_sync1 <= 1'b0;
            fs_sync2 <= 1'b0;
            fd_sync0 <= 1'b0;
            fd_sync1 <= 1'b0;
            fd_sync2 <= 1'b0;
            state <= S_IDLE;
            active <= 1'b0;
            frame_done_seen <= 1'b0;
            addr_ctr <= 22'd0;
            hold_data <= 16'd0;
            fifo_rd_en <= 1'b0;
            wr_req <= 1'b0;
            wr_addr <= 22'd0;
            wr_data <= 16'd0;
            frame_ready <= 1'b0;
            words_written <= 22'd0;
            capture_arm_pulse <= 1'b0;
            frame_start_pulse <= 1'b0;
            frame_done_pulse <= 1'b0;
        end else begin
            fifo_rd_en <= 1'b0;
            wr_req <= 1'b0;
            capture_arm_pulse <= 1'b0;
            frame_start_pulse <= 1'b0;
            frame_done_pulse <= 1'b0;

            fs_sync0 <= frame_start_toggle;
            fs_sync1 <= fs_sync0;
            fs_sync2 <= fs_sync1;
            fd_sync0 <= frame_done_toggle;
            fd_sync1 <= fd_sync0;
            fd_sync2 <= fd_sync1;

            if (clear_counts_pulse) begin
                state <= S_IDLE;
                active <= 1'b0;
                frame_done_seen <= 1'b0;
                addr_ctr <= 22'd0;
                frame_ready <= 1'b0;
                words_written <= 22'd0;
            end

            if (frame_start_evt) begin
                active <= capture_enable;
                frame_done_seen <= 1'b0;
                frame_ready <= 1'b0;
                capture_arm_pulse <= capture_enable;
                frame_start_pulse <= 1'b1;
                state <= S_IDLE;
            end

            if (frame_done_evt) begin
                active <= 1'b0;
                frame_done_seen <= 1'b1;
            end

            case (state)
                S_IDLE: begin
                    if ((!fifo_empty) && (addr_ctr < FRAME_WORDS_U) && (active || frame_done_seen)) begin
                        fifo_rd_en <= 1'b1;
                        state <= S_POP;
                    end else if (frame_done_seen && fifo_empty) begin
                        if (addr_ctr >= FRAME_WORDS_U) begin
                            frame_ready <= 1'b1;
                            frame_done_pulse <= 1'b1;
                        end
                        frame_done_seen <= 1'b0;
                    end
                end

                S_POP: begin
                    hold_data <= fifo_rd_data;
                    wr_addr <= addr_ctr;
                    wr_data <= fifo_rd_data;
                    wr_req <= 1'b1;
                    state <= S_WRITE;
                end

                S_WRITE: begin
                    wr_req <= 1'b1;
                    wr_addr <= addr_ctr;
                    wr_data <= hold_data;
                    if (wr_ack) begin
                        addr_ctr <= addr_ctr + 22'd1;
                        words_written <= addr_ctr + 22'd1;
                        state <= S_IDLE;
                    end
                end

                default: begin
                    state <= S_IDLE;
                end
            endcase
        end
    end
endmodule
