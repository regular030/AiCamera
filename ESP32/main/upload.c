#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "freertos/FreeRTOS.h"
#include "freertos/task.h"

#include "esp_err.h"
#include "esp_check.h"
#include "esp_http_server.h"
#include "esp_log.h"
#include "esp_rom_sys.h"
#include "esp_timer.h"

#include "driver/gpio.h"
#include "driver/spi_master.h"

static const char *TAG = "fpga_upload";

#define FPGA_PROGRAMN_PIN      9
#define FPGA_SSPI_CSN_PIN      10
#define FPGA_SSPI_CCLK_PIN     11
#define FPGA_SSPI_MOSI_PIN     12
#define FPGA_SSPI_MISO_PIN     13
#define FPGA_DONE_PIN          14
#define FPGA_INITN_PIN         15

#define FPGA_SPI_HOST          SPI2_HOST
#define FPGA_SPI_CLK_HZ        250000
#define FPGA_UPLOAD_CHUNK      2048
#define FPGA_INIT_TIMEOUT_MS   500
#define FPGA_DONE_TIMEOUT_MS   3000
#define FPGA_BUSY_TIMEOUT_MS   3000

/* ECP5 Slave SPI sysCONFIG commands */
static const uint8_t CMD_ISC_ENABLE[4]          = {0xC6, 0x00, 0x00, 0x00};
static const uint8_t CMD_ISC_DISABLE[4]         = {0x26, 0x00, 0x00, 0x00};
static const uint8_t CMD_ISC_ERASE[4]           = {0x0E, 0x01, 0x00, 0x00};
static const uint8_t CMD_LSC_INIT_ADDR[4]       = {0x46, 0x00, 0x00, 0x00};
static const uint8_t CMD_LSC_BITSTREAM_BURST[4] = {0x7A, 0x00, 0x00, 0x00};
static const uint8_t CMD_LSC_CHECK_BUSY[4]      = {0xF0, 0x00, 0x00, 0x00};

static spi_device_handle_t s_fpga_spi = NULL;
static bool s_upload_ready = false;

static inline bool pin_valid(int pin) { return pin >= 0; }

static esp_err_t check_required_pins(void)
{
    if (!pin_valid(FPGA_PROGRAMN_PIN) ||
        !pin_valid(FPGA_SSPI_CSN_PIN) ||
        !pin_valid(FPGA_SSPI_CCLK_PIN) ||
        !pin_valid(FPGA_SSPI_MOSI_PIN) ||
        !pin_valid(FPGA_DONE_PIN) ||
        !pin_valid(FPGA_INITN_PIN)) {
        ESP_LOGE(TAG, "Set the FPGA_*_PIN macros in upload.c before building");
        return ESP_ERR_INVALID_ARG;
    }
    return ESP_OK;
}

static esp_err_t wait_gpio_level(gpio_num_t pin, int level, int timeout_ms)
{
    int64_t deadline_us = esp_timer_get_time() + ((int64_t)timeout_ms * 1000);
    while (esp_timer_get_time() < deadline_us) {
        if (gpio_get_level(pin) == level) {
            return ESP_OK;
        }
        vTaskDelay(pdMS_TO_TICKS(1));
    }
    return ESP_ERR_TIMEOUT;
}

static esp_err_t spi_write_bytes(const uint8_t *data, size_t len)
{
    if (len == 0) return ESP_OK;
    spi_transaction_t t = {
        .flags = 0,
        .length = len * 8,
        .tx_buffer = data,
        .rx_buffer = NULL,
    };
    return spi_device_transmit(s_fpga_spi, &t);
}

static esp_err_t spi_write_then_read_byte(const uint8_t *tx, size_t tx_len, uint8_t *rx)
{
    spi_transaction_t t1 = {0};
    t1.length = tx_len * 8;
    t1.tx_buffer = tx;

    spi_transaction_t t2 = {0};
    t2.length = 8;
    t2.rxlength = 8;
    t2.flags = SPI_TRANS_USE_TXDATA;
    t2.tx_data[0] = 0x00;
    t2.rx_buffer = rx;

    esp_err_t err = spi_device_transmit(s_fpga_spi, &t1);
    if (err != ESP_OK) return err;

    return spi_device_transmit(s_fpga_spi, &t2);
}
static inline void cs_low(void)
{
    gpio_set_level((gpio_num_t)FPGA_SSPI_CSN_PIN, 0);
}

static inline void cs_high(void)
{
    gpio_set_level((gpio_num_t)FPGA_SSPI_CSN_PIN, 1);
}

static esp_err_t fpga_send_cmd(const uint8_t *cmd, size_t len)
{
    esp_err_t err;
    cs_low();
    err = spi_write_bytes(cmd, len);
    cs_high();
    return err;
}

static esp_err_t fpga_poll_busy(int timeout_ms)
{
    int64_t deadline_us = esp_timer_get_time() + ((int64_t)timeout_ms * 1000);
    uint8_t busy = 0xFF;
    int count = 0;

    while (esp_timer_get_time() < deadline_us) {
        cs_low();
        esp_err_t err = spi_write_then_read_byte(CMD_LSC_CHECK_BUSY, sizeof(CMD_LSC_CHECK_BUSY), &busy);
        cs_high();

        if (err != ESP_OK) return err;

        if ((count++ % 50) == 0) {
            ESP_LOGI(TAG, "busy=0x%02X done=%d initn=%d",
                     busy,
                     gpio_get_level((gpio_num_t)FPGA_DONE_PIN),
                     gpio_get_level((gpio_num_t)FPGA_INITN_PIN));
        }

        if (busy == 0x00) return ESP_OK;
        esp_rom_delay_us(100);
    }

    ESP_LOGE(TAG, "Timed out waiting for FPGA busy to clear");
    return ESP_ERR_TIMEOUT;
}

static esp_err_t fpga_enter_config_mode(void)
{
    cs_high();
    gpio_set_level((gpio_num_t)FPGA_PROGRAMN_PIN, 1);
    esp_rom_delay_us(5);

    gpio_set_level((gpio_num_t)FPGA_PROGRAMN_PIN, 0);
    esp_rom_delay_us(20);
    gpio_set_level((gpio_num_t)FPGA_PROGRAMN_PIN, 1);

    if (wait_gpio_level((gpio_num_t)FPGA_INITN_PIN, 0, 100) != ESP_OK) {
        ESP_LOGW(TAG, "INITN did not go low after PROGRAMN pulse");
    }

    ESP_RETURN_ON_ERROR(wait_gpio_level((gpio_num_t)FPGA_INITN_PIN, 1, FPGA_INIT_TIMEOUT_MS), TAG,
                        "INITN did not return high");

    return ESP_OK;
}

static esp_err_t fpga_prepare_programming(void)
{
    ESP_RETURN_ON_ERROR(fpga_send_cmd(CMD_ISC_ENABLE, sizeof(CMD_ISC_ENABLE)), TAG, "ISC_ENABLE failed");
    ESP_RETURN_ON_ERROR(fpga_send_cmd(CMD_ISC_ERASE, sizeof(CMD_ISC_ERASE)), TAG, "ISC_ERASE failed");
    ESP_RETURN_ON_ERROR(fpga_poll_busy(FPGA_BUSY_TIMEOUT_MS), TAG, "erase busy timeout");
    ESP_RETURN_ON_ERROR(fpga_send_cmd(CMD_LSC_INIT_ADDR, sizeof(CMD_LSC_INIT_ADDR)), TAG, "LSC_INIT_ADDR failed");
    return ESP_OK;
}

static esp_err_t fpga_start_bitstream_burst(void)
{
    cs_low();
    return spi_write_bytes(CMD_LSC_BITSTREAM_BURST, sizeof(CMD_LSC_BITSTREAM_BURST));
}

static esp_err_t fpga_finish_config(void)
{
    cs_high();

    ESP_RETURN_ON_ERROR(fpga_poll_busy(FPGA_BUSY_TIMEOUT_MS), TAG, "bitstream busy timeout");
    ESP_RETURN_ON_ERROR(fpga_send_cmd(CMD_ISC_DISABLE, sizeof(CMD_ISC_DISABLE)), TAG, "ISC_DISABLE failed");
    ESP_RETURN_ON_ERROR(wait_gpio_level((gpio_num_t)FPGA_DONE_PIN, 1, FPGA_DONE_TIMEOUT_MS), TAG,
                        "DONE did not go high");

    if (gpio_get_level((gpio_num_t)FPGA_INITN_PIN) == 0) {
        ESP_LOGE(TAG, "INITN is low after upload, configuration failed");
        return ESP_FAIL;
    }

    return ESP_OK;
}

static int recv_exact(httpd_req_t *req, uint8_t *buf, int want)
{
    int total = 0;
    while (total < want) {
        int got = httpd_req_recv(req, (char *)buf + total, want - total);
        if (got == HTTPD_SOCK_ERR_TIMEOUT) continue;
        if (got <= 0) return got;
        total += got;
    }
    return total;
}

static esp_err_t fpga_program_handler(httpd_req_t *req)
{
    if (!s_upload_ready) {
        httpd_resp_send_err(req, HTTPD_500_INTERNAL_SERVER_ERROR, "upload block not initialized");
        return ESP_FAIL;
    }
    if (req->content_len <= 0) {
        httpd_resp_send_err(req, HTTPD_400_BAD_REQUEST, "empty request body");
        return ESP_ERR_INVALID_ARG;
    }

    uint8_t *buf = malloc(FPGA_UPLOAD_CHUNK);
    if (!buf) {
        httpd_resp_send_err(req, HTTPD_500_INTERNAL_SERVER_ERROR, "malloc failed");
        return ESP_ERR_NO_MEM;
    }

    ESP_LOGI(TAG, "Starting FPGA upload, %d bytes", req->content_len);
    esp_err_t err = fpga_enter_config_mode();
    if (err == ESP_OK) err = fpga_prepare_programming();
    if (err == ESP_OK) err = fpga_start_bitstream_burst();
    if (err != ESP_OK) {
        cs_high();
        free(buf);
        httpd_resp_send_err(req, HTTPD_500_INTERNAL_SERVER_ERROR, "failed entering program mode");
        return err;
    }

    int remaining = req->content_len;
    while (remaining > 0) {
        const int chunk = (remaining > FPGA_UPLOAD_CHUNK) ? FPGA_UPLOAD_CHUNK : remaining;
        const int got = recv_exact(req, buf, chunk);
        if (got <= 0) {
            cs_high();
            free(buf);
            httpd_resp_send_err(req, HTTPD_500_INTERNAL_SERVER_ERROR, "http receive failed");
            return ESP_FAIL;
        }

        err = spi_write_bytes(buf, (size_t)got);
        if (err != ESP_OK) {
            cs_high();
            free(buf);
            httpd_resp_send_err(req, HTTPD_500_INTERNAL_SERVER_ERROR, "spi transmit failed");
            return err;
        }
        remaining -= got;
    }

    free(buf);
    err = fpga_finish_config();
    if (err != ESP_OK) {
        httpd_resp_send_err(req, HTTPD_500_INTERNAL_SERVER_ERROR, "fpga configuration failed");
        return err;
    }

    ESP_LOGI(TAG, "FPGA upload complete, DONE=%d INITN=%d",
             gpio_get_level((gpio_num_t)FPGA_DONE_PIN),
             gpio_get_level((gpio_num_t)FPGA_INITN_PIN));

    httpd_resp_set_type(req, "application/json");
    httpd_resp_sendstr(req, "{\"programmed\":true}\n");
    return ESP_OK;
}

static esp_err_t fpga_cfg_status_handler(httpd_req_t *req)
{
    char resp[96];
    snprintf(resp, sizeof(resp), "{\"done\":%d,\"initn\":%d}\n",
             gpio_get_level((gpio_num_t)FPGA_DONE_PIN),
             gpio_get_level((gpio_num_t)FPGA_INITN_PIN));
    httpd_resp_set_type(req, "application/json");
    httpd_resp_sendstr(req, resp);
    return ESP_OK;
}

esp_err_t fpga_upload_init(void)
{
    ESP_RETURN_ON_ERROR(check_required_pins(), TAG, "invalid GPIO map");
    if (s_upload_ready) return ESP_OK;

    gpio_config_t out_cfg = {
        .pin_bit_mask = (1ULL << FPGA_PROGRAMN_PIN) | (1ULL << FPGA_SSPI_CSN_PIN),
        .mode = GPIO_MODE_OUTPUT,
        .pull_up_en = GPIO_PULLUP_DISABLE,
        .pull_down_en = GPIO_PULLDOWN_DISABLE,
        .intr_type = GPIO_INTR_DISABLE,
    };
    ESP_RETURN_ON_ERROR(gpio_config(&out_cfg), TAG, "output gpio config failed");

    gpio_config_t in_cfg = {
        .pin_bit_mask = (1ULL << FPGA_DONE_PIN) | (1ULL << FPGA_INITN_PIN),
        .mode = GPIO_MODE_INPUT,
        .pull_up_en = GPIO_PULLUP_DISABLE,
        .pull_down_en = GPIO_PULLDOWN_DISABLE,
        .intr_type = GPIO_INTR_DISABLE,
    };
    ESP_RETURN_ON_ERROR(gpio_config(&in_cfg), TAG, "input gpio config failed");

    gpio_set_level((gpio_num_t)FPGA_PROGRAMN_PIN, 1);
    gpio_set_level((gpio_num_t)FPGA_SSPI_CSN_PIN, 1);

    spi_bus_config_t buscfg = {
        .mosi_io_num = FPGA_SSPI_MOSI_PIN,
        .miso_io_num = pin_valid(FPGA_SSPI_MISO_PIN) ? FPGA_SSPI_MISO_PIN : -1,
        .sclk_io_num = FPGA_SSPI_CCLK_PIN,
        .quadwp_io_num = -1,
        .quadhd_io_num = -1,
        .max_transfer_sz = FPGA_UPLOAD_CHUNK,
    };

    spi_device_interface_config_t devcfg = {
        .clock_speed_hz = FPGA_SPI_CLK_HZ,
        .mode = 0,
        .spics_io_num = -1,
        .queue_size = 1,
        .flags = 0,
    };

    esp_err_t err = spi_bus_initialize(FPGA_SPI_HOST, &buscfg, 0);
    if (err != ESP_OK && err != ESP_ERR_INVALID_STATE) {
        ESP_LOGE(TAG, "spi_bus_initialize failed: %s", esp_err_to_name(err));
        return err;
    }

    err = spi_bus_add_device(FPGA_SPI_HOST, &devcfg, &s_fpga_spi);
    if (err == ESP_ERR_INVALID_STATE && s_fpga_spi != NULL) err = ESP_OK;
    ESP_RETURN_ON_ERROR(err, TAG, "spi_bus_add_device failed");

    s_upload_ready = true;
    ESP_LOGI(TAG, "FPGA upload block initialized");
    return ESP_OK;
}

esp_err_t fpga_upload_register_routes(httpd_handle_t server)
{
    if (!server) return ESP_ERR_INVALID_ARG;

    httpd_uri_t prog_uri = {
        .uri = "/fpga/program",
        .method = HTTP_POST,
        .handler = fpga_program_handler,
        .user_ctx = NULL,
    };
    httpd_uri_t status_uri = {
        .uri = "/fpga/cfg_status",
        .method = HTTP_GET,
        .handler = fpga_cfg_status_handler,
        .user_ctx = NULL,
    };

    ESP_RETURN_ON_ERROR(httpd_register_uri_handler(server, &prog_uri), TAG, "register /fpga/program failed");
    ESP_RETURN_ON_ERROR(httpd_register_uri_handler(server, &status_uri), TAG, "register /fpga/cfg_status failed");
    return ESP_OK;
}
