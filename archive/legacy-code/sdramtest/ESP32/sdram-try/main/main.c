#include <inttypes.h>
#include <stdbool.h>
#include <stdio.h>
#include <string.h>

#include "driver/gpio.h"
#include "driver/uart.h"
#include "esp_err.h"
#include "esp_event.h"
#include "esp_http_server.h"
#include "esp_netif.h"
#include "esp_timer.h"
#include "esp_wifi.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "nvs_flash.h"

#define PIN_D0  5
#define PIN_D1  6
#define PIN_D2  7
#define PIN_D3  16
#define PIN_D4  8
#define PIN_D5  21
#define PIN_D6  47
#define PIN_STB 48

#define FPGA_UART_NUM UART_NUM_1
#define FPGA_UART_TX_PIN 10
#define FPGA_UART_BAUD 115200

#define AP_SSID "AiCamera-SDRAM"
#define AP_PASS "aicamera123"

#define CMD_SYNC  0xA5
#define OP_PING   0x30
#define OP_WRITE  0x31
#define OP_READ   0x32
#define OP_CLEAR  0x33

#define SYNC_A 63
#define SYNC_B 0
#define SYNC_C 63
#define SYNC_D 2

#define MAX_TEXT_BYTES (64 * 1024)
#define PREAMBLE_TIMEOUT_US 3000000ULL
#define SYMBOL_TIMEOUT_US 2000000ULL

static httpd_handle_t g_server;
static uint8_t g_seq;
static volatile uint32_t g_last_write_len;
static volatile uint32_t g_last_read_len;
static volatile uint8_t g_last_checksum_ok;
static volatile uint8_t g_busy;

typedef struct {
    uint8_t prev_stb;
    uint64_t last_edge_us;
} strobe_reader_t;

static inline uint8_t read_sym6(void) {
    return ((gpio_get_level(PIN_D6) & 1) << 5) |
           ((gpio_get_level(PIN_D5) & 1) << 4) |
           ((gpio_get_level(PIN_D4) & 1) << 3) |
           ((gpio_get_level(PIN_D2) & 1) << 2) |
           ((gpio_get_level(PIN_D1) & 1) << 1) |
           ((gpio_get_level(PIN_D0) & 1) << 0);
}

static inline uint8_t read_raw7_phys(void) {
    return ((gpio_get_level(PIN_D6) & 1) << 6) |
           ((gpio_get_level(PIN_D5) & 1) << 5) |
           ((gpio_get_level(PIN_D4) & 1) << 4) |
           ((gpio_get_level(PIN_D3) & 1) << 3) |
           ((gpio_get_level(PIN_D2) & 1) << 2) |
           ((gpio_get_level(PIN_D1) & 1) << 1) |
           ((gpio_get_level(PIN_D0) & 1) << 0);
}

static inline uint8_t read_pin8(void) {
    return ((gpio_get_level(PIN_STB) & 1) << 7) |
           ((gpio_get_level(PIN_D6) & 1) << 6) |
           ((gpio_get_level(PIN_D5) & 1) << 5) |
           ((gpio_get_level(PIN_D4) & 1) << 4) |
           ((gpio_get_level(PIN_D3) & 1) << 3) |
           ((gpio_get_level(PIN_D2) & 1) << 2) |
           ((gpio_get_level(PIN_D1) & 1) << 1) |
           ((gpio_get_level(PIN_D0) & 1) << 0);
}

static esp_err_t read_sym_until(strobe_reader_t *sr, uint8_t *sym, uint64_t deadline_us) {
    uint32_t spin = 0;
    while ((int64_t)(deadline_us - esp_timer_get_time()) > 0) {
        uint8_t stb = gpio_get_level(PIN_STB);
        if (stb && !sr->prev_stb) {
            sr->last_edge_us = esp_timer_get_time();
            sr->prev_stb = stb;
            *sym = read_sym6();
            return ESP_OK;
        }
        sr->prev_stb = stb;
        if ((++spin & 0x3FFFu) == 0) {
            taskYIELD();
        }
    }
    return ESP_ERR_TIMEOUT;
}

static esp_err_t read_u32_symbols_until(strobe_reader_t *sr, uint32_t *out,
                                        uint64_t deadline_us) {
    uint32_t v = 0;
    for (int i = 0; i < 8; i++) {
        uint8_t sym = 0;
        esp_err_t err = read_sym_until(sr, &sym, deadline_us);
        if (err != ESP_OK) {
            *out = v;
            return err;
        }
        if (sym > 15) {
            *out = v;
            return ESP_ERR_INVALID_RESPONSE;
        }
        v = (v << 4) | (sym & 0x0F);
    }
    *out = v;
    return ESP_OK;
}

static esp_err_t wait_response_header(strobe_reader_t *sr, uint32_t max_len,
                                      uint32_t *len_out,
                                      uint32_t *last_bad_len,
                                      esp_err_t *last_bad_err) {
    uint64_t deadline = esp_timer_get_time() + PREAMBLE_TIMEOUT_US;
    uint8_t state = 0;

    *len_out = 0;
    if (last_bad_len) {
        *last_bad_len = 0;
    }
    if (last_bad_err) {
        *last_bad_err = ESP_OK;
    }

    while ((int64_t)(deadline - esp_timer_get_time()) > 0) {
        uint8_t sym = 0;
        esp_err_t err = read_sym_until(sr, &sym, deadline);
        if (err != ESP_OK) {
            return err;
        }

        if (state == 0) {
            state = (sym == SYNC_A) ? 1 : 0;
        } else if (state == 1) {
            if (sym == SYNC_B) {
                state = 2;
            } else {
                state = (sym == SYNC_A) ? 1 : 0;
            }
        } else if (state == 2) {
            state = (sym == SYNC_C) ? 3 : 0;
        } else {
            if (sym == SYNC_D) {
                uint32_t candidate_len = 0;
                esp_err_t len_err = read_u32_symbols_until(sr, &candidate_len,
                                                           deadline);
                if (len_err == ESP_OK && candidate_len <= max_len) {
                    *len_out = candidate_len;
                    return ESP_OK;
                }
                if (last_bad_len) {
                    *last_bad_len = candidate_len;
                }
                if (last_bad_err) {
                    *last_bad_err = len_err;
                }
            }
            state = 0;
        }
    }

    return ESP_ERR_TIMEOUT;
}

static esp_err_t read_nibble(strobe_reader_t *sr, uint8_t *nib) {
    uint64_t deadline = esp_timer_get_time() + SYMBOL_TIMEOUT_US;
    uint8_t sym = 0;
    esp_err_t err = read_sym_until(sr, &sym, deadline);
    if (err != ESP_OK) {
        return err;
    }
    if (sym > 15) {
        return ESP_ERR_INVALID_RESPONSE;
    }
    *nib = sym & 0x0F;
    return ESP_OK;
}

static esp_err_t read_byte(strobe_reader_t *sr, uint8_t *out) {
    uint8_t hi = 0;
    uint8_t lo = 0;
    esp_err_t err = read_nibble(sr, &hi);
    if (err != ESP_OK) {
        return err;
    }
    err = read_nibble(sr, &lo);
    if (err != ESP_OK) {
        return err;
    }
    *out = (uint8_t)((hi << 4) | lo);
    return ESP_OK;
}

static void make_packet(uint8_t op, uint32_t arg, uint8_t out[8]) {
    out[0] = CMD_SYNC;
    out[1] = op;
    out[2] = (uint8_t)(arg & 0xFF);
    out[3] = (uint8_t)((arg >> 8) & 0xFF);
    out[4] = (uint8_t)((arg >> 16) & 0xFF);
    out[5] = (uint8_t)((arg >> 24) & 0xFF);
    out[6] = g_seq++;
    out[7] = out[0] ^ out[1] ^ out[2] ^ out[3] ^ out[4] ^ out[5] ^ out[6];
}

static esp_err_t fpga_send_packet(uint8_t op, uint32_t arg) {
    uint8_t pkt[8];
    make_packet(op, arg, pkt);
    int written = uart_write_bytes(FPGA_UART_NUM, (const char *)pkt, sizeof(pkt));
    if (written != (int)sizeof(pkt)) {
        return ESP_FAIL;
    }
    return uart_wait_tx_done(FPGA_UART_NUM, pdMS_TO_TICKS(1000));
}

static void fpga_uart_init(void) {
    uart_config_t cfg = {
        .baud_rate = FPGA_UART_BAUD,
        .data_bits = UART_DATA_8_BITS,
        .parity = UART_PARITY_DISABLE,
        .stop_bits = UART_STOP_BITS_1,
        .flow_ctrl = UART_HW_FLOWCTRL_DISABLE,
        .source_clk = UART_SCLK_DEFAULT,
    };

    ESP_ERROR_CHECK(uart_driver_install(FPGA_UART_NUM, 4096, 0, 0, NULL, 0));
    ESP_ERROR_CHECK(uart_param_config(FPGA_UART_NUM, &cfg));
    ESP_ERROR_CHECK(uart_set_pin(FPGA_UART_NUM, FPGA_UART_TX_PIN,
                                 UART_PIN_NO_CHANGE,
                                 UART_PIN_NO_CHANGE,
                                 UART_PIN_NO_CHANGE));
}

static void wifi_init_softap(void) {
    ESP_ERROR_CHECK(esp_netif_init());
    ESP_ERROR_CHECK(esp_event_loop_create_default());
    esp_netif_create_default_wifi_ap();

    wifi_init_config_t cfg = WIFI_INIT_CONFIG_DEFAULT();
    ESP_ERROR_CHECK(esp_wifi_init(&cfg));

    wifi_config_t wifi_config = {0};
    memcpy(wifi_config.ap.ssid, AP_SSID, strlen(AP_SSID));
    memcpy(wifi_config.ap.password, AP_PASS, strlen(AP_PASS));
    wifi_config.ap.ssid_len = strlen(AP_SSID);
    wifi_config.ap.channel = 6;
    wifi_config.ap.max_connection = 4;
    wifi_config.ap.authmode = WIFI_AUTH_WPA2_PSK;

    ESP_ERROR_CHECK(esp_wifi_set_mode(WIFI_MODE_AP));
    ESP_ERROR_CHECK(esp_wifi_set_config(WIFI_IF_AP, &wifi_config));
    ESP_ERROR_CHECK(esp_wifi_start());
}

static esp_err_t root_handler(httpd_req_t *req) {
    const char *html =
        "<!doctype html><html><head><meta charset='utf-8'>"
        "<title>AiCamera SDRAM text loopback</title>"
        "<style>"
        "body{background:#050505;color:#f7f7f7;font-family:Arial,sans-serif;margin:0;padding:18px}"
        "h1{font-size:30px;margin:0 0 12px}"
        "textarea{width:min(900px,96vw);height:260px;background:#111;color:#fff;border:1px solid #555;border-radius:4px;padding:10px;font-family:Consolas,monospace;font-size:14px}"
        "button{border:0;border-radius:4px;background:#fff;color:#000;padding:9px 12px;font-weight:700;margin:8px 8px 8px 0}"
        "pre{white-space:pre-wrap;background:#111;border:1px solid #333;border-radius:4px;padding:10px;width:min(900px,96vw)}"
        ".note{color:#bbb;margin:8px 0 14px}.pill{font-family:Consolas,monospace;background:#222;padding:3px 7px;border-radius:4px}"
        "</style></head><body>"
        "<h1>AiCamera SDRAM text loopback</h1>"
        "<div class='note'>ESP32 -> GPIO10 UART -> FPGA storage mirror, then FPGA -> D0..D6 + GPIO48 strobe -> ESP32. Max text: 64 KB.</div>"
        "<div class='note'>Wi-Fi: <span class='pill'>AiCamera-SDRAM</span> / <span class='pill'>aicamera123</span></div>"
        "<textarea id='text'>According to all known laws of aviation, there is no way a bee should be able to fly.</textarea><br>"
        "<button onclick='pinProbe()'>Pin activity probe</button>"
        "<button onclick='heartbeat()'>Sample FPGA heartbeat</button>"
        "<button onclick='txBurst()'>TX burst only</button>"
        "<button onclick='pingFpga()'>Ping FPGA path</button>"
        "<button onclick='writeText()'>Write textarea</button>"
        "<button onclick='readText()'>Read back</button>"
        "<button onclick='clearRam()'>Clear length</button>"
        "<button onclick='status()'>Status</button>"
        "<pre id='out'>ready</pre>"
        "<script>"
        "async function pinProbe(){out.textContent='sampling pins without waiting for strobe...';let r=await fetch('/pinprobe');out.textContent=await r.text();}"
        "async function heartbeat(){out.textContent='sampling raw strobe symbols...';let r=await fetch('/recent');out.textContent=await r.text();}"
        "async function txBurst(){out.textContent='sending GPIO10 UART burst only...';let r=await fetch('/txburst');out.textContent=await r.text();}"
        "async function pingFpga(){out.textContent='pinging FPGA command + strobe path...';let r=await fetch('/ping');out.textContent=await r.text();}"
        "async function writeText(){let t=document.getElementById('text').value;out.textContent='writing '+new TextEncoder().encode(t).length+' bytes...';"
        "let r=await fetch('/write',{method:'POST',body:t});out.textContent=await r.text();}"
        "async function readText(){out.textContent='reading back...';let r=await fetch('/read');let txt=await r.text();out.textContent=txt;}"
        "async function clearRam(){let r=await fetch('/clear',{method:'POST'});out.textContent=await r.text();}"
        "async function status(){let r=await fetch('/status');out.textContent=await r.text();}"
        "</script></body></html>";

    httpd_resp_set_type(req, "text/html");
    httpd_resp_set_hdr(req, "Cache-Control", "no-store");
    return httpd_resp_send(req, html, HTTPD_RESP_USE_STRLEN);
}

static esp_err_t ping_handler(httpd_req_t *req) {
    if (g_busy) {
        return httpd_resp_send_err(req, HTTPD_500_INTERNAL_SERVER_ERROR, "busy");
    }
    g_busy = 1;

    esp_err_t err = fpga_send_packet(OP_PING, 0);
    if (err != ESP_OK) {
        g_busy = 0;
        return httpd_resp_send_err(req, HTTPD_500_INTERNAL_SERVER_ERROR, "failed to send ping command");
    }

    strobe_reader_t sr = {
        .prev_stb = (uint8_t)gpio_get_level(PIN_STB),
        .last_edge_us = esp_timer_get_time(),
    };

    uint32_t len = 0;
    uint32_t bad_len = 0;
    esp_err_t bad_err = ESP_OK;
    err = wait_response_header(&sr, 64, &len, &bad_len, &bad_err);
    if (err != ESP_OK) {
        char msg[128];
        snprintf(msg, sizeof(msg),
                 "timed out waiting for FPGA ping preamble/header; last_bad_err=0x%x last_bad_len=%" PRIu32,
                 (unsigned)bad_err, bad_len);
        g_busy = 0;
        return httpd_resp_send_err(req, HTTPD_408_REQ_TIMEOUT, msg);
    }

    uint8_t buf[64] = {0};
    uint8_t checksum = 0;
    for (uint32_t i = 0; i < len; i++) {
        err = read_byte(&sr, &buf[i]);
        if (err != ESP_OK) {
            g_busy = 0;
            return httpd_resp_send_err(req, HTTPD_408_REQ_TIMEOUT,
                                       "timed out reading FPGA ping payload");
        }
        checksum ^= buf[i];
    }

    uint8_t fpga_checksum = 0;
    err = read_byte(&sr, &fpga_checksum);
    if (err != ESP_OK) {
        g_busy = 0;
        return httpd_resp_send_err(req, HTTPD_408_REQ_TIMEOUT,
                                   "timed out reading FPGA ping checksum");
    }

    char resp[384];
    int n = snprintf(resp, sizeof(resp),
                     "FPGA ping response: %.*s\n"
                     "len=%" PRIu32 " esp_xor=0x%02x fpga_xor=0x%02x %s\n"
                     "debug bytes: flags=0x%02x last_op=0x%02x hdr_idx=%u sdram_init=%u\n",
                     (int)len, (const char *)buf,
                     len, checksum, fpga_checksum,
                     checksum == fpga_checksum ? "OK" : "MISMATCH",
                     len > 4 ? buf[4] : 0,
                     len > 5 ? buf[5] : 0,
                     len > 6 ? buf[6] : 0,
                     len > 7 ? buf[7] : 0);

    g_busy = 0;
    httpd_resp_set_type(req, "text/plain");
    httpd_resp_set_hdr(req, "Cache-Control", "no-store");
    return httpd_resp_send(req, resp, n);
}

static esp_err_t txburst_handler(httpd_req_t *req) {
    uint8_t burst[96];
    for (int i = 0; i < (int)sizeof(burst); i += 4) {
        burst[i + 0] = 0x55;
        burst[i + 1] = 0xAA;
        burst[i + 2] = 0x00;
        burst[i + 3] = 0xFF;
    }

    int sent = uart_write_bytes(FPGA_UART_NUM, (const char *)burst, sizeof(burst));
    uart_wait_tx_done(FPGA_UART_NUM, pdMS_TO_TICKS(1000));

    char resp[160];
    int n = snprintf(resp, sizeof(resp),
                     "sent %d GPIO10 UART burst bytes; now click Sample FPGA heartbeat and watch edge/fall/rise/uart counters\n",
                     sent);
    httpd_resp_set_type(req, "text/plain");
    httpd_resp_set_hdr(req, "Cache-Control", "no-store");
    return httpd_resp_send(req, resp, n);
}

static esp_err_t recent_handler(httpd_req_t *req) {
    strobe_reader_t sr = {
        .prev_stb = (uint8_t)gpio_get_level(PIN_STB),
        .last_edge_us = esp_timer_get_time(),
    };

    uint8_t syms[128] = {0};
    uint8_t sym_n = 0;

    char resp[4096];
    int off = snprintf(resp, sizeof(resp),
                       "{ \"stb48\":%d, \"sym6_now\":%u, \"symbols\":[",
                       gpio_get_level(PIN_STB), read_sym6());

    for (int i = 0; i < 96 && off < (int)sizeof(resp) - 64; i++) {
        uint8_t sym = 0;
        uint64_t before = sr.last_edge_us;
        esp_err_t err = read_sym_until(&sr, &sym, esp_timer_get_time() + 500000ULL);
        if (err != ESP_OK) {
            off += snprintf(resp + off, sizeof(resp) - off,
                            "%s\"timeout\"", i ? "," : "");
            break;
        }
        if (sym_n < (uint8_t)(sizeof(syms) / sizeof(syms[0]))) {
            syms[sym_n++] = sym;
        }
        uint32_t gap = (uint32_t)(sr.last_edge_us - before);
        off += snprintf(resp + off, sizeof(resp) - off,
                        "%s{\"s\":%u,\"gap_us\":%" PRIu32 "}",
                        i ? "," : "", sym, gap);
    }

    off += snprintf(resp + off, sizeof(resp) - off,
                    "] }\n"
                    "Expected idle heartbeat after the new FPGA bitstream: repeating symbols starting with 60,21.\n");

    for (uint8_t i = 0; i + 15 < sym_n; i++) {
        if (syms[i] == 60 && syms[i + 1] == 21) {
            uint8_t last_uart = (uint8_t)((syms[i + 13] << 4) | (syms[i + 12] & 0x0F));
            off += snprintf(resp + off, sizeof(resp) - off,
                            "decoded heartbeat: cmd=%u edge_lo=%u fall_lo=%u rise_lo=%u "
                            "rx_start_lo=%u uart_lo=%u good_lo=%u bad_lo=%u hdr_x2=%u "
                            "last_op_lo=%u last_uart=0x%02x stopbad_lo=%u tail=%u\n",
                            syms[i + 2], syms[i + 3], syms[i + 4], syms[i + 5],
                            syms[i + 6], syms[i + 7], syms[i + 8], syms[i + 9],
                            syms[i + 10], syms[i + 11], last_uart, syms[i + 14],
                            syms[i + 15]);
            break;
        }
    }

    httpd_resp_set_type(req, "text/plain");
    httpd_resp_set_hdr(req, "Cache-Control", "no-store");
    return httpd_resp_send(req, resp, off);
}

static esp_err_t pinprobe_handler(httpd_req_t *req) {
    enum { PIN_COUNT = 8, FIRST_COUNT = 64 };
    uint32_t highs[PIN_COUNT] = {0};
    uint32_t transitions[PIN_COUNT] = {0};
    uint8_t first[FIRST_COUNT] = {0};
    uint8_t first_n = 0;
    uint8_t prev = read_pin8();
    uint8_t raw_min = 127;
    uint8_t raw_max = 0;
    uint8_t sym_min = 63;
    uint8_t sym_max = 0;
    uint32_t samples = 0;
    uint32_t strobe_rise = 0;
    uint32_t strobe_fall = 0;
    int64_t start = esp_timer_get_time();
    int64_t end = start + 500000;

    while ((int64_t)(end - esp_timer_get_time()) > 0) {
        uint8_t pins = read_pin8();
        uint8_t changed = pins ^ prev;
        uint8_t raw7 = pins & 0x7F;
        uint8_t sym6 = read_sym6();

        if (first_n < FIRST_COUNT) {
            first[first_n++] = pins;
        }
        if (raw7 < raw_min) raw_min = raw7;
        if (raw7 > raw_max) raw_max = raw7;
        if (sym6 < sym_min) sym_min = sym6;
        if (sym6 > sym_max) sym_max = sym6;

        for (int i = 0; i < PIN_COUNT; i++) {
            if (pins & (1u << i)) highs[i]++;
            if (changed & (1u << i)) transitions[i]++;
        }
        if ((changed & 0x80) && (pins & 0x80)) strobe_rise++;
        if ((changed & 0x80) && !(pins & 0x80)) strobe_fall++;

        prev = pins;
        samples++;
        if ((samples & 0x3FFu) == 0) {
            taskYIELD();
        }
    }

    char resp[2048];
    int off = snprintf(resp, sizeof(resp),
        "{\n"
        "  \"duration_us\":%" PRId64 ",\n"
        "  \"samples\":%" PRIu32 ",\n"
        "  \"now\":{\"stb48\":%d,\"d0\":%d,\"d1\":%d,\"d2\":%d,\"d3\":%d,\"d4\":%d,\"d5\":%d,\"d6\":%d,\"raw7_phys\":%u,\"sym6\":%u},\n"
        "  \"raw7_min\":%u,\"raw7_max\":%u,\"sym6_min\":%u,\"sym6_max\":%u,\n"
        "  \"strobe_rise\":%" PRIu32 ",\"strobe_fall\":%" PRIu32 ",\n"
        "  \"high_counts\":{\"d0\":%" PRIu32 ",\"d1\":%" PRIu32 ",\"d2\":%" PRIu32 ",\"d3\":%" PRIu32 ",\"d4\":%" PRIu32 ",\"d5\":%" PRIu32 ",\"d6\":%" PRIu32 ",\"stb48\":%" PRIu32 "},\n"
        "  \"transitions\":{\"d0\":%" PRIu32 ",\"d1\":%" PRIu32 ",\"d2\":%" PRIu32 ",\"d3\":%" PRIu32 ",\"d4\":%" PRIu32 ",\"d5\":%" PRIu32 ",\"d6\":%" PRIu32 ",\"stb48\":%" PRIu32 "},\n"
        "  \"first_pin8\":[",
        (int64_t)(esp_timer_get_time() - start),
        samples,
        gpio_get_level(PIN_STB),
        gpio_get_level(PIN_D0), gpio_get_level(PIN_D1), gpio_get_level(PIN_D2),
        gpio_get_level(PIN_D3), gpio_get_level(PIN_D4), gpio_get_level(PIN_D5),
        gpio_get_level(PIN_D6), read_raw7_phys(), read_sym6(),
        raw_min, raw_max, sym_min, sym_max,
        strobe_rise, strobe_fall,
        highs[0], highs[1], highs[2], highs[3], highs[4], highs[5], highs[6], highs[7],
        transitions[0], transitions[1], transitions[2], transitions[3],
        transitions[4], transitions[5], transitions[6], transitions[7]);

    for (uint8_t i = 0; i < first_n && off < (int)sizeof(resp) - 64; i++) {
        off += snprintf(resp + off, sizeof(resp) - off, "%s%u", i ? "," : "", first[i]);
    }
    off += snprintf(resp + off, sizeof(resp) - off,
                    "]\n}\n"
                    "Interpretation: if all transitions are 0 and raw7/sym6 stay 0, the ESP is not seeing this FPGA output bus at all.\n"
                    "If data pins move but stb48 does not, GPIO48/strobe mapping is wrong in this test image.\n"
                    "If heartbeat edges exist, /recent should show 60,21 soon after flashing the matching FPGA bitstream.\n");

    httpd_resp_set_type(req, "text/plain");
    httpd_resp_set_hdr(req, "Cache-Control", "no-store");
    return httpd_resp_send(req, resp, off);
}

static esp_err_t write_handler(httpd_req_t *req) {
    if (g_busy) {
        return httpd_resp_send_err(req, HTTPD_500_INTERNAL_SERVER_ERROR, "busy");
    }
    if (req->content_len > MAX_TEXT_BYTES) {
        return httpd_resp_send_err(req, HTTPD_400_BAD_REQUEST, "text is too large");
    }

    g_busy = 1;
    uint32_t remaining = req->content_len;
    uint32_t total = req->content_len;
    uint8_t checksum = 0;
    uint8_t buf[512];

    esp_err_t err = fpga_send_packet(OP_WRITE, total);
    if (err != ESP_OK) {
        g_busy = 0;
        return httpd_resp_send_err(req, HTTPD_500_INTERNAL_SERVER_ERROR, "failed to send write header");
    }

    while (remaining > 0) {
        size_t want = remaining > sizeof(buf) ? sizeof(buf) : remaining;
        int got = httpd_req_recv(req, (char *)buf, want);
        if (got <= 0) {
            g_busy = 0;
            return httpd_resp_send_err(req, HTTPD_500_INTERNAL_SERVER_ERROR, "failed to receive HTTP body");
        }
        for (int i = 0; i < got; i++) {
            checksum ^= buf[i];
        }
        int sent = uart_write_bytes(FPGA_UART_NUM, (const char *)buf, got);
        if (sent != got) {
            g_busy = 0;
            return httpd_resp_send_err(req, HTTPD_500_INTERNAL_SERVER_ERROR, "failed to stream text to FPGA");
        }
        remaining -= (uint32_t)got;
        vTaskDelay(pdMS_TO_TICKS(1));
    }

    uart_wait_tx_done(FPGA_UART_NUM, pdMS_TO_TICKS(30000));
    vTaskDelay(pdMS_TO_TICKS(100));
    g_last_write_len = total;
    g_busy = 0;

    char resp[160];
    int n = snprintf(resp, sizeof(resp),
                     "wrote %" PRIu32 " bytes to FPGA storage path\nESP-side xor checksum: 0x%02x\nnow click Read back\n",
                     total, checksum);
    httpd_resp_set_type(req, "text/plain");
    httpd_resp_set_hdr(req, "Cache-Control", "no-store");
    return httpd_resp_send(req, resp, n);
}

static esp_err_t read_handler(httpd_req_t *req) {
    if (g_busy) {
        return httpd_resp_send_err(req, HTTPD_500_INTERNAL_SERVER_ERROR, "busy");
    }
    g_busy = 1;

    esp_err_t err = fpga_send_packet(OP_READ, 0);
    if (err != ESP_OK) {
        g_busy = 0;
        return httpd_resp_send_err(req, HTTPD_500_INTERNAL_SERVER_ERROR, "failed to send read command");
    }

    strobe_reader_t sr = {
        .prev_stb = (uint8_t)gpio_get_level(PIN_STB),
        .last_edge_us = esp_timer_get_time(),
    };

    uint32_t len = 0;
    uint32_t bad_len = 0;
    esp_err_t bad_err = ESP_OK;
    err = wait_response_header(&sr, MAX_TEXT_BYTES, &len, &bad_len, &bad_err);
    if (err != ESP_OK) {
        char msg[128];
        snprintf(msg, sizeof(msg),
                 "timed out waiting for FPGA read preamble/header; last_bad_err=0x%x last_bad_len=%" PRIu32,
                 (unsigned)bad_err, bad_len);
        g_busy = 0;
        return httpd_resp_send_err(req, HTTPD_408_REQ_TIMEOUT, msg);
    }

    httpd_resp_set_type(req, "text/plain; charset=utf-8");
    httpd_resp_set_hdr(req, "Cache-Control", "no-store");

    uint8_t chunk[256];
    uint32_t idx = 0;
    uint8_t checksum = 0;
    while (idx < len) {
        size_t n = 0;
        while (n < sizeof(chunk) && idx < len) {
            uint8_t b = 0;
            err = read_byte(&sr, &b);
            if (err != ESP_OK) {
                g_busy = 0;
                httpd_resp_send_chunk(req, NULL, 0);
                return err;
            }
            chunk[n++] = b;
            checksum ^= b;
            idx++;
        }
        err = httpd_resp_send_chunk(req, (const char *)chunk, n);
        if (err != ESP_OK) {
            g_busy = 0;
            return err;
        }
        vTaskDelay(pdMS_TO_TICKS(1));
    }

    uint8_t fpga_checksum = 0;
    err = read_byte(&sr, &fpga_checksum);
    if (err != ESP_OK) {
        g_busy = 0;
        httpd_resp_send_chunk(req, NULL, 0);
        return err;
    }

    g_last_read_len = len;
    g_last_checksum_ok = (checksum == fpga_checksum);

    char footer[128];
    int footer_len = snprintf(footer, sizeof(footer),
                              "\n\n--- FPGA loopback: %" PRIu32 " bytes, esp_xor=0x%02x, fpga_xor=0x%02x, %s ---\n",
                              len, checksum, fpga_checksum,
                              g_last_checksum_ok ? "OK" : "MISMATCH");
    httpd_resp_send_chunk(req, footer, footer_len);
    httpd_resp_send_chunk(req, NULL, 0);
    g_busy = 0;
    return ESP_OK;
}

static esp_err_t clear_handler(httpd_req_t *req) {
    esp_err_t err = fpga_send_packet(OP_CLEAR, 0);
    if (err != ESP_OK) {
        return httpd_resp_send_err(req, HTTPD_500_INTERNAL_SERVER_ERROR, "failed to send clear");
    }
    g_last_write_len = 0;
    g_last_read_len = 0;
    g_last_checksum_ok = 0;
    httpd_resp_set_type(req, "text/plain");
    return httpd_resp_sendstr(req, "cleared FPGA stored length\n");
}

static esp_err_t status_handler(httpd_req_t *req) {
    char buf[384];
    int n = snprintf(buf, sizeof(buf),
        "{ \"busy\":%u, \"last_write_len\":%" PRIu32 ", \"last_read_len\":%" PRIu32
        ", \"checksum_ok\":%u, \"stb48\":%d"
        ", \"d0\":%d, \"d1\":%d, \"d2\":%d, \"d3\":%d, \"d4\":%d, \"d5\":%d, \"d6\":%d"
        ", \"raw7_phys\":%u, \"sym6\":%u }\n",
        g_busy, g_last_write_len, g_last_read_len, g_last_checksum_ok,
        gpio_get_level(PIN_STB),
        gpio_get_level(PIN_D0), gpio_get_level(PIN_D1), gpio_get_level(PIN_D2),
        gpio_get_level(PIN_D3), gpio_get_level(PIN_D4), gpio_get_level(PIN_D5),
        gpio_get_level(PIN_D6), read_raw7_phys(), read_sym6());

    httpd_resp_set_type(req, "application/json");
    httpd_resp_set_hdr(req, "Cache-Control", "no-store");
    return httpd_resp_send(req, buf, n);
}

static void start_web(void) {
    httpd_config_t config = HTTPD_DEFAULT_CONFIG();
    config.max_uri_handlers = 9;
    config.max_open_sockets = 4;
    config.lru_purge_enable = true;
    config.stack_size = 8192;
    ESP_ERROR_CHECK(httpd_start(&g_server, &config));

    httpd_uri_t root = {.uri="/", .method=HTTP_GET, .handler=root_handler};
    httpd_uri_t pinprobe = {.uri="/pinprobe", .method=HTTP_GET, .handler=pinprobe_handler};
    httpd_uri_t recent = {.uri="/recent", .method=HTTP_GET, .handler=recent_handler};
    httpd_uri_t txburst = {.uri="/txburst", .method=HTTP_GET, .handler=txburst_handler};
    httpd_uri_t ping = {.uri="/ping", .method=HTTP_GET, .handler=ping_handler};
    httpd_uri_t write = {.uri="/write", .method=HTTP_POST, .handler=write_handler};
    httpd_uri_t read = {.uri="/read", .method=HTTP_GET, .handler=read_handler};
    httpd_uri_t clear = {.uri="/clear", .method=HTTP_POST, .handler=clear_handler};
    httpd_uri_t status = {.uri="/status", .method=HTTP_GET, .handler=status_handler};

    ESP_ERROR_CHECK(httpd_register_uri_handler(g_server, &root));
    ESP_ERROR_CHECK(httpd_register_uri_handler(g_server, &pinprobe));
    ESP_ERROR_CHECK(httpd_register_uri_handler(g_server, &recent));
    ESP_ERROR_CHECK(httpd_register_uri_handler(g_server, &txburst));
    ESP_ERROR_CHECK(httpd_register_uri_handler(g_server, &ping));
    ESP_ERROR_CHECK(httpd_register_uri_handler(g_server, &write));
    ESP_ERROR_CHECK(httpd_register_uri_handler(g_server, &read));
    ESP_ERROR_CHECK(httpd_register_uri_handler(g_server, &clear));
    ESP_ERROR_CHECK(httpd_register_uri_handler(g_server, &status));
}

void app_main(void) {
    ESP_ERROR_CHECK(nvs_flash_init());
    wifi_init_softap();

    int pins[] = {PIN_D0, PIN_D1, PIN_D2, PIN_D3, PIN_D4, PIN_D5, PIN_D6, PIN_STB};
    for (int i = 0; i < (int)(sizeof(pins) / sizeof(pins[0])); i++) {
        gpio_reset_pin((gpio_num_t)pins[i]);
        gpio_set_direction((gpio_num_t)pins[i], GPIO_MODE_INPUT);
        gpio_pulldown_dis((gpio_num_t)pins[i]);
        gpio_pullup_dis((gpio_num_t)pins[i]);
    }

    fpga_uart_init();
    start_web();
}
