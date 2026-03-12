#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_wifi.h"
#include "esp_event.h"
#include "esp_log.h"
#include "nvs_flash.h"
#include "esp_netif.h"
#include "esp_http_server.h"
#include "driver/uart.h"
#include "cmd_protocol.h"
#include "wifi_profile.h"

static const char *TAG = "aicamera_esp32";
static uint8_t g_seq = 0;

#define FPGA_UART_NUM      UART_NUM_1
#define FPGA_UART_TX_PIN   17
#define FPGA_UART_RX_PIN   18
#define FPGA_UART_BAUD     115200

static void fpga_send_cmd(uint8_t opcode, uint32_t arg) {
    uint8_t pkt[8];
    fpga_make_cmd_packet(opcode, arg, g_seq++, pkt);
    uart_write_bytes(FPGA_UART_NUM, (const char *)pkt, sizeof(pkt));
}

static esp_err_t ping_handler(httpd_req_t *req) {
    httpd_resp_send(req, "ok\n", HTTPD_RESP_USE_STRLEN);
    return ESP_OK;
}

static esp_err_t status_handler(httpd_req_t *req) {
    fpga_send_cmd(FPGA_OP_GET_STATUS, 0);
    httpd_resp_set_type(req, "application/json");
    httpd_resp_send(req, "{\"requested\":\"status\"}\n", HTTPD_RESP_USE_STRLEN);
    return ESP_OK;
}

static esp_err_t capture_handler(httpd_req_t *req) {
    char buf[64];
    int len = httpd_req_get_url_query_len(req) + 1;
    int enable = 0;
    if (len > 1 && len < (int)sizeof(buf)) {
        if (httpd_req_get_url_query_str(req, buf, sizeof(buf)) == ESP_OK) {
            char val[8];
            if (httpd_query_key_value(buf, "enable", val, sizeof(val)) == ESP_OK) enable = atoi(val);
        }
    }
    fpga_send_cmd(FPGA_OP_SET_CAPTURE, (uint32_t)(enable ? 1 : 0));
    httpd_resp_set_type(req, "application/json");
    httpd_resp_send(req, "{\"requested\":\"capture\"}\n", HTTPD_RESP_USE_STRLEN);
    return ESP_OK;
}

static esp_err_t mode_handler(httpd_req_t *req) {
    char buf[64];
    int len = httpd_req_get_url_query_len(req) + 1;
    int value = 0;
    if (len > 1 && len < (int)sizeof(buf)) {
        if (httpd_req_get_url_query_str(req, buf, sizeof(buf)) == ESP_OK) {
            char val[8];
            if (httpd_query_key_value(buf, "value", val, sizeof(val)) == ESP_OK) value = atoi(val);
        }
    }
    fpga_send_cmd(FPGA_OP_SET_MODE, (uint32_t)value);
    httpd_resp_set_type(req, "application/json");
    httpd_resp_send(req, "{\"requested\":\"mode\"}\n", HTTPD_RESP_USE_STRLEN);
    return ESP_OK;
}

static esp_err_t stride_handler(httpd_req_t *req) {
    char buf[64];
    int len = httpd_req_get_url_query_len(req) + 1;
    int value = 1;
    if (len > 1 && len < (int)sizeof(buf)) {
        if (httpd_req_get_url_query_str(req, buf, sizeof(buf)) == ESP_OK) {
            char val[8];
            if (httpd_query_key_value(buf, "value", val, sizeof(val)) == ESP_OK) value = atoi(val);
        }
    }
    fpga_send_cmd(FPGA_OP_SET_STRIDE, (uint32_t)value);
    httpd_resp_set_type(req, "application/json");
    httpd_resp_send(req, "{\"requested\":\"stride\"}\n", HTTPD_RESP_USE_STRLEN);
    return ESP_OK;
}

static httpd_handle_t start_webserver(void) {
    httpd_config_t config = HTTPD_DEFAULT_CONFIG();
    httpd_handle_t server = NULL;
    if (httpd_start(&server, &config) == ESP_OK) {
        httpd_uri_t ping_uri = {.uri="/ping", .method=HTTP_GET, .handler=ping_handler, .user_ctx=NULL};
        httpd_uri_t status_uri = {.uri="/status", .method=HTTP_GET, .handler=status_handler, .user_ctx=NULL};
        httpd_uri_t capture_uri = {.uri="/capture", .method=HTTP_GET, .handler=capture_handler, .user_ctx=NULL};
        httpd_uri_t mode_uri = {.uri="/mode", .method=HTTP_GET, .handler=mode_handler, .user_ctx=NULL};
        httpd_uri_t stride_uri = {.uri="/stride", .method=HTTP_GET, .handler=stride_handler, .user_ctx=NULL};
        httpd_register_uri_handler(server, &ping_uri);
        httpd_register_uri_handler(server, &status_uri);
        httpd_register_uri_handler(server, &capture_uri);
        httpd_register_uri_handler(server, &mode_uri);
        httpd_register_uri_handler(server, &stride_uri);
    }
    return server;
}

static void wifi_init_sta(void) {
    esp_netif_create_default_wifi_sta();
    wifi_init_config_t cfg = WIFI_INIT_CONFIG_DEFAULT();
    esp_wifi_init(&cfg);

    wifi_config_t wifi_config = {0};
    strncpy((char *)wifi_config.sta.ssid, WIFI_SSID, sizeof(wifi_config.sta.ssid));
    strncpy((char *)wifi_config.sta.password, WIFI_PASSWORD, sizeof(wifi_config.sta.password));

    esp_wifi_set_mode(WIFI_MODE_STA);
    esp_wifi_set_config(WIFI_IF_STA, &wifi_config);
    esp_wifi_start();
    esp_wifi_connect();
}

void app_main(void) {
    nvs_flash_init();
    esp_netif_init();
    esp_event_loop_create_default();

    const uart_config_t uart_config = {
        .baud_rate = FPGA_UART_BAUD,
        .data_bits = UART_DATA_8_BITS,
        .parity    = UART_PARITY_DISABLE,
        .stop_bits = UART_STOP_BITS_1,
        .flow_ctrl = UART_HW_FLOWCTRL_DISABLE,
        .source_clk = UART_SCLK_DEFAULT,
    };

    uart_driver_install(FPGA_UART_NUM, 2048, 0, 0, NULL, 0);
    uart_param_config(FPGA_UART_NUM, &uart_config);
    uart_set_pin(FPGA_UART_NUM, FPGA_UART_TX_PIN, FPGA_UART_RX_PIN, UART_PIN_NO_CHANGE, UART_PIN_NO_CHANGE);

    wifi_init_sta();
    start_webserver();

    ESP_LOGI(TAG, "ESP32 control bridge started");

    while (1) {
        vTaskDelay(pdMS_TO_TICKS(1000));
    }
}
