module sd_spi_writer #(
    parameter integer CLK_HZ = 24000000,
    parameter integer INIT_SPI_HZ = 300000
) (
    input  wire       clk,
    input  wire       rst,
    input  wire       start,
    output reg        busy,
    output reg        done,
    output reg        error,
    output reg [10:0] sector_index,
    output reg        sector_start,
    output reg        src_byte_req,
    input  wire [7:0] src_byte_data,
    input  wire       src_byte_valid,
    input  wire       src_sector_done,
    output reg        sd_cs_n,
    output reg        sd_sclk,
    output reg        sd_mosi,
    input  wire       sd_miso,
    output reg [7:0]  dbg_state,
    output reg [7:0]  dbg_last_r1,
    output reg [7:0]  dbg_last_rx,
    output reg [7:0]  dbg_last_dataresp,
    output reg [15:0] dbg_timeout,
    output reg [7:0]  dbg_init_step,
    output reg [7:0]  dbg_cmd_idx,
    output reg [7:0]  dbg_bit_idx,
    output reg        dbg_spi_busy,
    output reg        dbg_spi_start,
    output reg [7:0]  dbg_spi_tx_byte
);

    localparam integer DIV_INIT = CLK_HZ / (INIT_SPI_HZ*2);

    localparam [3:0]
        S_IDLE      = 4'd0,
        S_BOOT      = 4'd1,
        S_SEND0     = 4'd2,
        S_SEND1     = 4'd3,
        S_SEND2     = 4'd4,
        S_SEND3     = 4'd5,
        S_SEND4     = 4'd6,
        S_SEND5     = 4'd7,
        S_POLL      = 4'd8,
        S_HOLD      = 4'd9,
        S_ERR       = 4'd10;

    reg [3:0] state;
    reg [15:0] div_ctr;
    reg [15:0] boot_bits;
    reg [2:0] bit_idx;
    reg [7:0] tx_byte;
    reg [7:0] rx_byte;
    reg [7:0] resp_count;
    reg [15:0] timeout_ctr;
    reg start_pending;

    task start_byte;
        input [7:0] b;
        begin
            tx_byte <= b;
            dbg_spi_tx_byte <= b;
            bit_idx <= 3'd7;
            div_ctr <= 16'd0;
            dbg_spi_busy <= 1'b1;
            dbg_spi_start <= 1'b1;
            sd_mosi <= b[7];
            sd_sclk <= 1'b0;
        end
    endtask

    always @(posedge clk) begin
        if (rst) begin
            busy <= 1'b0;
            done <= 1'b0;
            error <= 1'b0;
            sector_index <= 11'd0;
            sector_start <= 1'b0;
            src_byte_req <= 1'b0;
            sd_cs_n <= 1'b1;
            sd_sclk <= 1'b0;
            sd_mosi <= 1'b1;
            state <= S_IDLE;
            div_ctr <= 16'd0;
            boot_bits <= 16'd79;
            bit_idx <= 3'd0;
            tx_byte <= 8'hFF;
            rx_byte <= 8'h00;
            resp_count <= 8'd0;
            timeout_ctr <= 16'd0;
            start_pending <= 1'b0;

            dbg_state <= 8'h00;
            dbg_last_r1 <= 8'h00;
            dbg_last_rx <= 8'h00;
            dbg_last_dataresp <= 8'h00;
            dbg_timeout <= 16'h0000;
            dbg_init_step <= 8'h00;
            dbg_cmd_idx <= 8'h00;
            dbg_bit_idx <= 8'h00;
            dbg_spi_busy <= 1'b0;
            dbg_spi_start <= 1'b0;
            dbg_spi_tx_byte <= 8'hFF;
        end else begin
            if (start)
                start_pending <= 1'b1;

            done <= 1'b0;
            error <= 1'b0;
            sector_start <= 1'b0;
            src_byte_req <= 1'b0;
            dbg_spi_start <= 1'b0;

            dbg_state <= {4'h0, state};
            dbg_timeout <= timeout_ctr;
            dbg_last_rx <= rx_byte;
            dbg_bit_idx <= {5'h00, bit_idx};

            case (state)
                S_IDLE: begin
                    busy <= 1'b0;
                    sd_cs_n <= 1'b1;
                    sd_mosi <= 1'b1;
                    sd_sclk <= 1'b0;
                    dbg_spi_busy <= 1'b0;
                    if (start_pending || start) begin
                        start_pending <= 1'b0;
                        busy <= 1'b1;
                        boot_bits <= 16'd79; // 80 clocks
                        div_ctr <= 16'd0;
                        sd_cs_n <= 1'b1;
                        sd_mosi <= 1'b1;
                        state <= S_BOOT;
                    end
                end

                S_BOOT: begin
                    if (div_ctr == DIV_INIT-1) begin
                        div_ctr <= 16'd0;
                        sd_sclk <= ~sd_sclk;
                        if (sd_sclk == 1'b1) begin
                            if (boot_bits == 0) begin
                                sd_sclk <= 1'b0;
                                sd_cs_n <= 1'b0;
                                dbg_cmd_idx <= 8'd0;
                                start_byte(8'h40); // CMD0 byte0
                                state <= S_SEND0;
                            end else begin
                                boot_bits <= boot_bits - 16'd1;
                            end
                        end
                    end else begin
                        div_ctr <= div_ctr + 16'd1;
                    end
                end

                S_SEND0, S_SEND1, S_SEND2, S_SEND3, S_SEND4, S_SEND5: begin
                    if (div_ctr == DIV_INIT-1) begin
                        div_ctr <= 16'd0;
                        sd_sclk <= ~sd_sclk;
                        if (sd_sclk == 1'b0) begin
                            rx_byte[bit_idx] <= sd_miso;
                            if (bit_idx == 0) begin
                                dbg_spi_busy <= 1'b0;
                                dbg_last_rx <= rx_byte;
                                case (state)
                                    S_SEND0: begin dbg_cmd_idx <= 8'd1; start_byte(8'h00); state <= S_SEND1; end
                                    S_SEND1: begin dbg_cmd_idx <= 8'd2; start_byte(8'h00); state <= S_SEND2; end
                                    S_SEND2: begin dbg_cmd_idx <= 8'd3; start_byte(8'h00); state <= S_SEND3; end
                                    S_SEND3: begin dbg_cmd_idx <= 8'd4; start_byte(8'h00); state <= S_SEND4; end
                                    S_SEND4: begin dbg_cmd_idx <= 8'd5; start_byte(8'h95); state <= S_SEND5; end
                                    default: begin
                                        dbg_cmd_idx <= 8'd6;
                                        resp_count <= 8'd0;
                                        timeout_ctr <= 16'd0;
                                        start_byte(8'hFF);
                                        state <= S_POLL;
                                    end
                                endcase
                            end else begin
                                bit_idx <= bit_idx - 3'd1;
                                tx_byte <= {tx_byte[6:0],1'b1};
                                sd_mosi <= tx_byte[6];
                            end
                        end
                    end else begin
                        div_ctr <= div_ctr + 16'd1;
                    end
                end

                S_POLL: begin
                    if (div_ctr == DIV_INIT-1) begin
                        div_ctr <= 16'd0;
                        sd_sclk <= ~sd_sclk;
                        if (sd_sclk == 1'b0) begin
                            rx_byte[bit_idx] <= sd_miso;
                            if (bit_idx == 0) begin
                                dbg_spi_busy <= 1'b0;
                                dbg_last_rx <= rx_byte;
                                resp_count <= resp_count + 8'd1;
                                timeout_ctr <= timeout_ctr + 16'd1;
                                if (rx_byte != 8'hFF) begin
                                    dbg_last_r1 <= rx_byte;
                                    done <= 1'b1;
                                    state <= S_HOLD;
                                end else if (resp_count == 8'd31) begin
                                    error <= 1'b1;
                                    state <= S_ERR;
                                end else begin
                                    start_byte(8'hFF);
                                end
                            end else begin
                                bit_idx <= bit_idx - 3'd1;
                                tx_byte <= {tx_byte[6:0],1'b1};
                                sd_mosi <= 1'b1;
                            end
                        end
                    end else begin
                        div_ctr <= div_ctr + 16'd1;
                    end
                end

                S_HOLD: begin
                    sd_cs_n <= 1'b0;
                    busy <= 1'b0;
                end

                default: begin
                    sd_cs_n <= 1'b0;
                    busy <= 1'b0;
                end
            endcase
        end
    end
endmodule
