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

/*
 * ECP5 Slave-SPI uploader for ESP32-S3.
 *
 * Public functions:
 *   esp_err_t fpga_upload_init(void);
 *   esp_err_t fpga_upload_register_routes(httpd_handle_t server);
 *
 * Default route:
 *   POST /fpga/program     body = raw bitstream bytes
 *   GET  /fpga/cfg_status
 *
 * IMPORTANT:
 *   Fill in the GPIO pin macros below to match your board.
 *   You said INITN is on ESP32 IO15, so that one is already set.
 */

static const char *TAG = "fpga_upload";

/* ===================== GPIO MAPPING ===================== */
#define FPGA_PROGRAMN_PIN      9   /* ESP32 GPIO -> FPGA PROGRAMN */
#define FPGA_SSPI_CSN_PIN      10   /* ESP32 GPIO -> FPGA SSPI_CS_n / SN */
#define FPGA_SSPI_CCLK_PIN     11   /* ESP32 GPIO -> FPGA CCLK */
#define FPGA_SSPI_MOSI_PIN     12   /* ESP32 GPIO -> FPGA DIN */
#define FPGA_SSPI_MISO_PIN     13   /* ESP32 GPIO <- FPGA DOUT */
#define FPGA_DONE_PIN          14   /* ESP32 GPIO <- FPGA DONE */
#define FPGA_INITN_PIN         15     /* ESP32 GPIO <- FPGA INITN */

/* Pick SPI2 or SPI3, whichever is free on your project. */
#define FPGA_SPI_HOST          SPI2_HOST
#define FPGA_SPI_CLK_HZ        1000000
#define FPGA_UPLOAD_CHUNK      2048
#define FPGA_INIT_TIMEOUT_MS   500
#define FPGA_DONE_TIMEOUT_MS   3000

static spi_device_handle_t s_fpga_spi = NULL;
static bool s_upload_ready = false;

static inline bool pin_valid(int pin)
{
    return pin >= 0;
}

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

static esp_err_t spi_send_bytes(const uint8_t *data, size_t len)
{
    if (len == 0) {
        return ESP_OK;
    }

    spi_transaction_t t = {
        .flags = 0,
        .length = len * 8,
        .tx_buffer = data,
        .rx_buffer = NULL,
    };

    return spi_device_transmit(s_fpga_spi, &t);
}

static esp_err_t fpga_enter_config_mode(void)
{
    gpio_set_level((gpio_num_t)FPGA_SSPI_CSN_PIN, 1);
    gpio_set_level((gpio_num_t)FPGA_PROGRAMN_PIN, 1);
    esp_rom_delay_us(5);

    /* Force reconfiguration */
    gpio_set_level((gpio_num_t)FPGA_PROGRAMN_PIN, 0);
    esp_rom_delay_us(20);
    gpio_set_level((gpio_num_t)FPGA_PROGRAMN_PIN, 1);

    /* Wait for INITN to go low, then high again. */
    if (wait_gpio_level((gpio_num_t)FPGA_INITN_PIN, 0, 100) != ESP_OK) {
        ESP_LOGW(TAG, "INITN did not go low after PROGRAMN pulse");
    }

    ESP_RETURN_ON_ERROR(
        wait_gpio_level((gpio_num_t)FPGA_INITN_PIN, 1, FPGA_INIT_TIMEOUT_MS),
        TAG,
        "INITN did not return high"
    );

    gpio_set_level((gpio_num_t)FPGA_SSPI_CSN_PIN, 0);
    return ESP_OK;
}

static esp_err_t fpga_finish_config(void)
{
    /* A tiny postamble of clocks can help bring-up. */
    static const uint8_t zeros[8] = {0};
    ESP_RETURN_ON_ERROR(spi_send_bytes(zeros, sizeof(zeros)), TAG, "postamble clocks failed");

    gpio_set_level((gpio_num_t)FPGA_SSPI_CSN_PIN, 1);

    ESP_RETURN_ON_ERROR(
        wait_gpio_level((gpio_num_t)FPGA_DONE_PIN, 1, FPGA_DONE_TIMEOUT_MS),
        TAG,
        "DONE did not go high"
    );

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
        if (got == HTTPD_SOCK_ERR_TIMEOUT) {
            continue;
        }
        if (got <= 0) {
            return got;
        }
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
    if (err != ESP_OK) {
        free(buf);
        httpd_resp_send_err(req, HTTPD_500_INTERNAL_SERVER_ERROR, "failed entering config mode");
        return err;
    }

    int remaining = req->content_len;
    while (remaining > 0) {
        const int chunk = (remaining > FPGA_UPLOAD_CHUNK) ? FPGA_UPLOAD_CHUNK : remaining;
        const int got = recv_exact(req, buf, chunk);
        if (got <= 0) {
            gpio_set_level((gpio_num_t)FPGA_SSPI_CSN_PIN, 1);
            free(buf);
            httpd_resp_send_err(req, HTTPD_500_INTERNAL_SERVER_ERROR, "http receive failed");
            return ESP_FAIL;
        }

        err = spi_send_bytes(buf, (size_t)got);
        if (err != ESP_OK) {
            gpio_set_level((gpio_num_t)FPGA_SSPI_CSN_PIN, 1);
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
    snprintf(resp, sizeof(resp),
             "{\"done\":%d,\"initn\":%d}\n",
             gpio_get_level((gpio_num_t)FPGA_DONE_PIN),
             gpio_get_level((gpio_num_t)FPGA_INITN_PIN));

    httpd_resp_set_type(req, "application/json");
    httpd_resp_sendstr(req, resp);
    return ESP_OK;
}

esp_err_t fpga_upload_init(void)
{
    ESP_RETURN_ON_ERROR(check_required_pins(), TAG, "invalid GPIO map");

    if (s_upload_ready) {
        return ESP_OK;
    }

    gpio_config_t out_cfg = {
        .pin_bit_mask =
            (1ULL << FPGA_PROGRAMN_PIN) |
            (1ULL << FPGA_SSPI_CSN_PIN),
        .mode = GPIO_MODE_OUTPUT,
        .pull_up_en = GPIO_PULLUP_DISABLE,
        .pull_down_en = GPIO_PULLDOWN_DISABLE,
        .intr_type = GPIO_INTR_DISABLE,
    };
    ESP_RETURN_ON_ERROR(gpio_config(&out_cfg), TAG, "output gpio config failed");

    gpio_config_t in_cfg = {
        .pin_bit_mask =
            (1ULL << FPGA_DONE_PIN) |
            (1ULL << FPGA_INITN_PIN),
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
        .flags = SPI_DEVICE_HALFDUPLEX,
    };

    esp_err_t err = spi_bus_initialize(FPGA_SPI_HOST, &buscfg, SPI_DMA_CH_AUTO);
    if (err != ESP_OK && err != ESP_ERR_INVALID_STATE) {
        ESP_LOGE(TAG, "spi_bus_initialize failed: %s", esp_err_to_name(err));
        return err;
    }

    err = spi_bus_add_device(FPGA_SPI_HOST, &devcfg, &s_fpga_spi);
    if (err == ESP_ERR_INVALID_STATE && s_fpga_spi != NULL) {
        err = ESP_OK;
    }
    ESP_RETURN_ON_ERROR(err, TAG, "spi_bus_add_device failed");

    s_upload_ready = true;
    ESP_LOGI(TAG, "FPGA upload block initialized");
    return ESP_OK;
}

esp_err_t fpga_upload_register_routes(httpd_handle_t server)
{
    if (!server) {
        return ESP_ERR_INVALID_ARG;
    }

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
