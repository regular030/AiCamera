// AiCamera ESP32 serial bridge: true 160x120 live preview receiver.
//
// The FPGA owns camera capture, downsample, and color packing. The ESP32 only
// samples the FPGA's phase-tagged RGB565 stream and forwards complete frames
// over USB/UART. A PC-side script serves the localhost preview.

#include <inttypes.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "esp_check.h"
#include "esp_event.h"
#include "esp_http_server.h"
#include "esp_log.h"
#include "esp_netif.h"
#include "esp_rom_sys.h"
#include "esp_system.h"
#include "esp_timer.h"
#include "esp_wifi.h"
#include "freertos/FreeRTOS.h"
#include "freertos/event_groups.h"
#include "freertos/semphr.h"
#include "freertos/task.h"
#include "nvs_flash.h"
#include "soc/gpio_reg.h"
#include "soc/rtc_cntl_reg.h"
#include "soc/soc.h"
#include "driver/gpio.h"
#include "driver/usb_serial_jtag.h"
#include "tinyusb.h"
#include "tusb_cdc_acm.h"

#include "wifi_profile.h"

#if WIFI_USE_ENTERPRISE
#include "esp_eap_client.h"
#endif

#define BUILD_ID 370

#define PREVIEW_W 160
#define PREVIEW_H 120
#define FRAME_PIXELS (PREVIEW_W * PREVIEW_H)
#define FRAME_BYTES (FRAME_PIXELS * 2)
#define SYMBOLS_PER_PIXEL 3
#define FRAME_SYMBOLS (FRAME_PIXELS * SYMBOLS_PER_PIXEL)
#define ROW_SYMBOLS (PREVIEW_W * SYMBOLS_PER_PIXEL)
#define SEG_PIXELS 40u
#define ROW_SEGMENTS (PREVIEW_W / SEG_PIXELS)
#define SEG_SYMBOLS (SEG_PIXELS * SYMBOLS_PER_PIXEL)
#define BMP_SCALE 1
#define BMP_W (PREVIEW_W * BMP_SCALE)
#define BMP_H (PREVIEW_H * BMP_SCALE)

#define PIN_D0 5
#define PIN_D1 6
#define PIN_D2 7
#define PIN_D4 8
#define PIN_D5 21
#define PIN_D6 47
#define PIN_D7 48
#define PIN_QCLK PIN_D5
#define PIN_GATE 13

#define QHDR0 61
#define QHDR1 2
#define QHDR2 58
#define QHDR3 5
#define QHDR6 51
#define QHDR7 12
#define RHDR0 62
#define RHDR1 17
#define RHDR5 45
#define CHDR1 18
#define CHDR5 44

#define RECENT_SYMS 64
#define GATE_WAIT_YIELD_LOOPS 250000u
#define GATE_EDGE_YIELD_LOOPS 4000000u
#define ROW_START_TIMEOUT_LOOPS 12000000u
#define ROW_GAP_IDLE_LOOPS 2048u
#define ROW_MARKER_SCAN_SYMBOLS 1024u
#define SERIAL_HEADER_LEN 32u
#define SERIAL_MAGIC "AICAMF1"
#define SERIAL_STATUS_LEN 64u
#define SERIAL_STATUS_MAGIC "AICAMS1"
#define SERIAL_FORMAT_RGB565_LE 0x0565u
#define SERIAL_FORMAT_RGB444_PACKED 0x0444u
#define SERIAL_FORMAT_RGB332_PACKED 0x0332u
#define SERIAL_FRAME_FORMAT SERIAL_FORMAT_RGB332_PACKED
#define USB_JTAG_WRITE_CHUNK 4096u
#define TINYUSB_WRITE_CHUNK 4096u
#define MAX_BAD_PIXELS_PER_FRAME 4096u
#define ROW_REPAIR_HOLD_THRESHOLD 320u

static const char *TAG = "aicamera";
static const EventBits_t WIFI_READY_BIT = BIT0;

typedef struct {
    uint32_t frame_id;
    uint32_t symbols;
    uint32_t sync_count;
    uint32_t complete;
    uint32_t partial;
    uint32_t row_resync;
    uint32_t row_bad;
    uint32_t tint_hold;
    uint32_t partial_publish;
    uint32_t row_hold;
    uint32_t artifact_hold;
    uint32_t blank_hold;
    uint32_t overflow;
    uint32_t max_ring_depth;
    uint16_t ring_depth;
    uint32_t payload_symbols;
    uint32_t capture_us;
    uint32_t gate_period_us;
    uint16_t first_word;
    uint8_t valid;
    uint8_t last_sym;
    uint8_t sync_state;
    uint8_t first_syms[24];
} preview_stats_t;

typedef struct {
    uint32_t r;
    uint32_t g;
    uint32_t b;
    uint32_t samples;
    uint32_t dark;
    uint32_t greenish;
    uint32_t olive;
} frame_color_summary_t;

static volatile uint32_t g_cpu_cycles_per_us = 240;
static uint8_t g_recent_syms[RECENT_SYMS];
static uint32_t g_recent_pos;

static SemaphoreHandle_t g_frame_mutex;
static uint16_t g_frame[PREVIEW_H][PREVIEW_W];
static uint16_t g_build_frame[PREVIEW_H][PREVIEW_W];
static uint16_t g_http_frame[PREVIEW_H][PREVIEW_W];
static uint16_t g_serial_frame[PREVIEW_H][PREVIEW_W];
static uint16_t g_serial_send_frame[PREVIEW_H][PREVIEW_W];
static uint16_t g_prev_frame[PREVIEW_H][PREVIEW_W];
static uint8_t g_row_symbols[ROW_SYMBOLS];
static preview_stats_t g_stats;
static preview_stats_t g_serial_frame_stats;
static EventGroupHandle_t g_wifi_events;
static SemaphoreHandle_t g_serial_mutex;
static SemaphoreHandle_t g_serial_frame_mutex;
static SemaphoreHandle_t g_serial_wake;
static bool g_serial_ready;
static bool g_serial_uses_tinyusb;
static volatile bool g_reboot_to_bootloader;
static uint32_t g_serial_frame_seq;
static uint32_t g_serial_sent_seq;
static volatile uint32_t g_gate_seen;
static volatile uint32_t g_clk_edges_seen;
static volatile uint32_t g_no_clock_abort;
static int64_t g_last_gate_start_us;

static void configure_gpio_receiver(void);
static void publish_frame(uint16_t first_word, uint32_t row_repairs);

static inline void put_le16(uint8_t *p, uint16_t v)
{
    p[0] = (uint8_t)(v & 0xffu);
    p[1] = (uint8_t)(v >> 8);
}

static inline void put_le32(uint8_t *p, uint32_t v)
{
    p[0] = (uint8_t)(v & 0xffu);
    p[1] = (uint8_t)((v >> 8) & 0xffu);
    p[2] = (uint8_t)((v >> 16) & 0xffu);
    p[3] = (uint8_t)((v >> 24) & 0xffu);
}

static void serial_write_all(const void *data, size_t len)
{
    const uint8_t *p = (const uint8_t *)data;
    while (len != 0) {
        if (g_serial_uses_tinyusb) {
            const size_t chunk = len > TINYUSB_WRITE_CHUNK ? TINYUSB_WRITE_CHUNK : len;
            const size_t wrote = tinyusb_cdcacm_write_queue(TINYUSB_CDC_ACM_0, p, chunk);
            if (wrote > 0) {
                p += wrote;
                len -= wrote;
                (void)tinyusb_cdcacm_write_flush(TINYUSB_CDC_ACM_0, 0);
            } else {
                (void)tinyusb_cdcacm_write_flush(TINYUSB_CDC_ACM_0, 0);
                vTaskDelay(1);
            }
            continue;
        }

        const size_t chunk = len > USB_JTAG_WRITE_CHUNK ? USB_JTAG_WRITE_CHUNK : len;
        const int wrote = usb_serial_jtag_write_bytes(p, chunk, pdMS_TO_TICKS(1));
        if (wrote > 0) {
            p += (size_t)wrote;
            len -= (size_t)wrote;
        } else {
            vTaskDelay(1);
        }
    }

    if (g_serial_uses_tinyusb) {
        (void)tinyusb_cdcacm_write_flush(TINYUSB_CDC_ACM_0, pdMS_TO_TICKS(1));
    }
}

static void reboot_to_usb_bootloader_if_requested(void)
{
    if (!g_reboot_to_bootloader) {
        return;
    }
    const char ack[] = "\r\nAICAMERA entering USB download mode\r\n";
    if (g_serial_uses_tinyusb) {
        (void)tinyusb_cdcacm_write_queue(TINYUSB_CDC_ACM_0, (const uint8_t *)ack, sizeof(ack) - 1u);
        (void)tinyusb_cdcacm_write_flush(TINYUSB_CDC_ACM_0, pdMS_TO_TICKS(20));
    }
    vTaskDelay(pdMS_TO_TICKS(25));
    REG_WRITE(RTC_CNTL_OPTION1_REG, RTC_CNTL_FORCE_DOWNLOAD_BOOT);
    esp_restart();
}

static void tinyusb_rx_callback(int itf, cdcacm_event_t *event)
{
    (void)event;
    uint8_t buf[64];
    size_t n = 0;
    static uint8_t match;
    static const char boot_cmd[] = "BOOT";

    if (tinyusb_cdcacm_read((tinyusb_cdcacm_itf_t)itf, buf, sizeof(buf), &n) != ESP_OK) {
        return;
    }
    for (size_t i = 0; i < n; i++) {
        const char c = (char)buf[i];
        if (c == boot_cmd[match]) {
            match++;
            if (match == sizeof(boot_cmd) - 1u) {
                g_reboot_to_bootloader = true;
                match = 0;
            }
        } else {
            match = (c == boot_cmd[0]) ? 1u : 0u;
        }
    }
}

static size_t pack_serial_frame(uint16_t frame[PREVIEW_H][PREVIEW_W])
{
#if SERIAL_FRAME_FORMAT == SERIAL_FORMAT_RGB444_PACKED
    size_t out = 0;
    const uint16_t *p = &frame[0][0];
    uint8_t *payload = (uint8_t *)&frame[0][0];
    for (uint32_t i = 0; i < FRAME_PIXELS; i += 2u) {
        const uint16_t w0 = p[i];
        const uint16_t w1 = p[i + 1u];
        const uint8_t lo0 = (uint8_t)(w0 >> 8);
        const uint8_t hi0 = (uint8_t)(w0 & 0xffu);
        const uint8_t lo1 = (uint8_t)(w1 >> 8);
        const uint8_t hi1 = (uint8_t)(w1 & 0xffu);
        const uint8_t r0 = hi0 >> 4;
        const uint8_t g0 = (uint8_t)((((hi0 & 0x07u) << 3) | (lo0 >> 5)) >> 2);
        const uint8_t b0 = (uint8_t)((lo0 & 0x1fu) >> 1);
        const uint8_t r1 = hi1 >> 4;
        const uint8_t g1 = (uint8_t)((((hi1 & 0x07u) << 3) | (lo1 >> 5)) >> 2);
        const uint8_t b1 = (uint8_t)((lo1 & 0x1fu) >> 1);
        payload[out++] = (uint8_t)((r0 << 4) | g0);
        payload[out++] = (uint8_t)((b0 << 4) | r1);
        payload[out++] = (uint8_t)((g1 << 4) | b1);
    }
    return out;
#elif SERIAL_FRAME_FORMAT == SERIAL_FORMAT_RGB332_PACKED
    size_t out = 0;
    const uint16_t *p = &frame[0][0];
    uint8_t *payload = (uint8_t *)&frame[0][0];
    for (uint32_t i = 0; i < FRAME_PIXELS; i++) {
        const uint16_t w = p[i];
        const uint8_t lo = (uint8_t)(w >> 8);
        const uint8_t hi = (uint8_t)(w & 0xffu);
        const uint8_t r3 = hi >> 5;
        const uint8_t g3 = (uint8_t)((((hi & 0x07u) << 3) | (lo >> 5)) >> 3);
        const uint8_t b2 = (uint8_t)((lo & 0x1fu) >> 3);
        payload[out++] = (uint8_t)((r3 << 5) | (g3 << 2) | b2);
    }
    return out;
#else
    return FRAME_BYTES;
#endif
}

static void send_serial_frame(uint16_t frame[PREVIEW_H][PREVIEW_W],
                              const preview_stats_t *stats)
{
    if (!g_serial_ready) {
        return;
    }
    if (g_serial_mutex &&
        xSemaphoreTake(g_serial_mutex, pdMS_TO_TICKS(25)) != pdTRUE) {
        return;
    }

    uint8_t hdr[SERIAL_HEADER_LEN] = {0};
    memcpy(&hdr[0], SERIAL_MAGIC, 7);
    hdr[7] = 0;
    put_le16(&hdr[8], PREVIEW_W);
    put_le16(&hdr[10], PREVIEW_H);
    const size_t payload_len = pack_serial_frame(frame);
    put_le16(&hdr[12], SERIAL_FRAME_FORMAT);
    put_le16(&hdr[14], SERIAL_HEADER_LEN);
    put_le32(&hdr[16], stats->frame_id);
    put_le32(&hdr[20], (uint32_t)payload_len);
    put_le32(&hdr[24], stats->capture_us);
    put_le32(&hdr[28], stats->gate_period_us);

    serial_write_all(hdr, sizeof(hdr));
    serial_write_all(frame, payload_len);

    if (g_serial_mutex) {
        xSemaphoreGive(g_serial_mutex);
    }
}

static void serial_frame_task(void *arg)
{
    (void)arg;
    while (true) {
        reboot_to_usb_bootloader_if_requested();
        xSemaphoreTake(g_serial_wake, pdMS_TO_TICKS(1000));

        preview_stats_t stats;
        bool have_frame = false;
        if (xSemaphoreTake(g_serial_frame_mutex, pdMS_TO_TICKS(20)) == pdTRUE) {
            if (g_serial_sent_seq != g_serial_frame_seq) {
                memcpy(g_serial_send_frame, g_serial_frame, sizeof(g_serial_send_frame));
                stats = g_serial_frame_stats;
                g_serial_sent_seq = g_serial_frame_seq;
                have_frame = true;
            }
            xSemaphoreGive(g_serial_frame_mutex);
        }

        if (have_frame) {
            send_serial_frame(g_serial_send_frame, &stats);
        }
    }
}

static void send_serial_status(void)
{
    if (!g_serial_ready) {
        return;
    }
    if (g_serial_mutex &&
        xSemaphoreTake(g_serial_mutex, pdMS_TO_TICKS(10)) != pdTRUE) {
        return;
    }

    const uint32_t gpio_lo = REG_READ(GPIO_IN_REG);
    const uint32_t gpio_hi = REG_READ(GPIO_IN1_REG);
    preview_stats_t s = g_stats;
    uint8_t pkt[SERIAL_STATUS_LEN] = {0};
    memcpy(&pkt[0], SERIAL_STATUS_MAGIC, 7);
    pkt[7] = 0;
    put_le16(&pkt[8], SERIAL_STATUS_LEN);
    put_le16(&pkt[10], BUILD_ID);
    put_le32(&pkt[12], s.frame_id);
    put_le32(&pkt[16], s.complete);
    put_le32(&pkt[20], s.partial);
    put_le32(&pkt[24], s.sync_count);
    put_le32(&pkt[28], g_gate_seen);
    put_le32(&pkt[32], g_clk_edges_seen);
    put_le32(&pkt[36], g_no_clock_abort);
    put_le32(&pkt[40], s.first_word);
    put_le32(&pkt[44], s.capture_us);
    put_le32(&pkt[48], s.gate_period_us);
    put_le32(&pkt[52], gpio_lo);
    put_le32(&pkt[56], gpio_hi);
    put_le32(&pkt[60], (s.valid ? 1u : 0u) | ((s.row_resync & 0xffffu) << 8));

    serial_write_all(pkt, sizeof(pkt));

    if (g_serial_mutex) {
        xSemaphoreGive(g_serial_mutex);
    }
}

static void status_task(void *arg)
{
    (void)arg;
    while (true) {
        reboot_to_usb_bootloader_if_requested();
        send_serial_status();
        vTaskDelay(pdMS_TO_TICKS(2000));
    }
}

static bool start_tinyusb_cdc_stream(void)
{
    const tinyusb_config_t tusb_cfg = {
        .device_descriptor = NULL,
        .string_descriptor = NULL,
        .string_descriptor_count = 0,
        .external_phy = false,
#if (TUD_OPT_HIGH_SPEED)
        .fs_configuration_descriptor = NULL,
        .hs_configuration_descriptor = NULL,
        .qualifier_descriptor = NULL,
#else
        .configuration_descriptor = NULL,
#endif
        .self_powered = false,
        .vbus_monitor_io = -1,
    };

    esp_err_t err = tinyusb_driver_install(&tusb_cfg);
    if (err != ESP_OK) {
        return false;
    }

    const tinyusb_config_cdcacm_t acm_cfg = {
        .usb_dev = TINYUSB_USBDEV_0,
        .cdc_port = TINYUSB_CDC_ACM_0,
        .rx_unread_buf_sz = 512,
        .callback_rx = tinyusb_rx_callback,
        .callback_rx_wanted_char = NULL,
        .callback_line_state_changed = NULL,
        .callback_line_coding_changed = NULL,
    };
    err = tusb_cdc_acm_init(&acm_cfg);
    if (err != ESP_OK) {
        return false;
    }

    g_serial_uses_tinyusb = true;
    g_serial_ready = true;

    char banner[96];
    const int n = snprintf(banner, sizeof(banner),
                           "\r\nAICAMERA tinyusb-cdc RGB332 160x120 build=%u\r\n",
                           BUILD_ID);
    if (n > 0) {
        const size_t send_len = ((size_t)n < sizeof(banner)) ? (size_t)n : sizeof(banner) - 1u;
        (void)tinyusb_cdcacm_write_queue(TINYUSB_CDC_ACM_0, (const uint8_t *)banner, send_len);
        (void)tinyusb_cdcacm_write_flush(TINYUSB_CDC_ACM_0, 0);
    }
    return true;
}

static void start_usb_serial_jtag_stream(void)
{
    usb_serial_jtag_driver_config_t cfg = USB_SERIAL_JTAG_DRIVER_CONFIG_DEFAULT();
    cfg.tx_buffer_size = 65536;
    cfg.rx_buffer_size = 256;
    if (!usb_serial_jtag_is_driver_installed()) {
        ESP_ERROR_CHECK(usb_serial_jtag_driver_install(&cfg));
    }

    char banner[96];
    const int n = snprintf(banner, sizeof(banner),
                           "\r\nAICAMERA usb-serial-jtag RGB565 160x120 build=%u\r\n",
                           BUILD_ID);
    if (n > 0) {
        const size_t send_len = ((size_t)n < sizeof(banner)) ? (size_t)n : sizeof(banner) - 1u;
        usb_serial_jtag_write_bytes(banner, send_len, pdMS_TO_TICKS(20));
    }
    g_serial_ready = true;
}

static void start_serial_stream(void)
{
    esp_log_level_set("*", ESP_LOG_NONE);
    if (start_tinyusb_cdc_stream()) {
        return;
    }
    start_usb_serial_jtag_stream();
}

static inline uint8_t IRAM_ATTR read_qvga_sym6(uint32_t lo, uint32_t hi)
{
    return (uint8_t)(((lo >> PIN_D0) & 0x01u) |
                     (((lo >> PIN_D1) & 0x01u) << 1) |
                     (((lo >> PIN_D2) & 0x01u) << 2) |
                     (((lo >> PIN_D4) & 0x01u) << 3) |
                     (((hi >> (PIN_D6 - 32)) & 0x01u) << 4) |
                     (((hi >> (PIN_D7 - 32)) & 0x01u) << 5));
}

static inline bool IRAM_ATTR qvga_gate_high(uint32_t lo)
{
    return ((lo >> PIN_GATE) & 0x01u) != 0;
}

static inline bool IRAM_ATTR qvga_clk_high(uint32_t lo)
{
    return ((lo >> PIN_QCLK) & 0x01u) != 0;
}

static inline void note_symbol(uint8_t sym)
{
    g_recent_syms[g_recent_pos++ & (RECENT_SYMS - 1u)] = sym & 0x3fu;
    g_stats.symbols++;
    g_stats.last_sym = sym & 0x3fu;
}

static inline void note_symbol_batch(const uint8_t *syms, uint32_t count)
{
    if (count == 0) {
        return;
    }

    g_stats.symbols += count;
    g_stats.last_sym = syms[count - 1u] & 0x3fu;

    const uint32_t keep = count < RECENT_SYMS ? count : RECENT_SYMS;
    const uint8_t *recent = syms + count - keep;
    for (uint32_t i = 0; i < keep; i++) {
        g_recent_syms[g_recent_pos++ & (RECENT_SYMS - 1u)] = recent[i] & 0x3fu;
    }
}

static inline void append_first_symbols(uint32_t *first_count,
                                        const uint8_t *syms,
                                        uint32_t count)
{
    while (*first_count < sizeof(g_stats.first_syms) && count != 0) {
        g_stats.first_syms[*first_count] = *syms & 0x3fu;
        (*first_count)++;
        syms++;
        count--;
    }
}

static uint32_t IRAM_ATTR read_qvga_symbols_burst(uint8_t *syms, uint32_t count,
                                                  uint32_t max_idle_loops)
{
    bool prev_clk = qvga_clk_high(REG_READ(GPIO_IN_REG));
    uint32_t idle_loops = 0;
    uint32_t got = 0;

    while (got < count) {
        const uint32_t lo = REG_READ(GPIO_IN_REG);
        if (!qvga_gate_high(lo)) {
            break;
        }
        const bool clk = qvga_clk_high(lo);
        if (!prev_clk && clk) {
            const uint32_t hi = REG_READ(GPIO_IN1_REG);
            g_gate_seen++;
            syms[got++] = read_qvga_sym6(lo, hi);
            g_clk_edges_seen++;
            idle_loops = 0;
        } else if (++idle_loops >= max_idle_loops) {
            break;
        }
        prev_clk = clk;
    }

    return got;
}

static bool IRAM_ATTR read_qvga_symbol_wait(uint8_t *sym, uint32_t max_idle_loops)
{
    bool prev_clk = qvga_clk_high(REG_READ(GPIO_IN_REG));
    uint32_t idle_loops = 0;

    while (idle_loops < max_idle_loops) {
        const uint32_t lo = REG_READ(GPIO_IN_REG);
        if (!qvga_gate_high(lo)) {
            return false;
        }
        const bool clk = qvga_clk_high(lo);
        if (!prev_clk && clk) {
            const uint32_t hi = REG_READ(GPIO_IN1_REG);
            g_gate_seen++;
            *sym = read_qvga_sym6(lo, hi);
            g_clk_edges_seen++;
            return true;
        }
        prev_clk = clk;
        idle_loops++;
    }

    return false;
}

static bool IRAM_ATTR read_qvga_row_marker(uint32_t *marker_row, uint8_t marker[6])
{
    uint32_t state = 0;
    uint32_t scanned = 0;

    while (scanned < ROW_MARKER_SCAN_SYMBOLS) {
        uint8_t s = 0;
        if (!read_qvga_symbol_wait(&s, ROW_START_TIMEOUT_LOOPS)) {
            return false;
        }
        s &= 0x3fu;
        scanned++;

        switch (state) {
        case 0:
            if (s == RHDR0) {
                marker[0] = s;
                state = 1;
            }
            break;
        case 1:
            if (s == RHDR1) {
                marker[1] = s;
                state = 2;
            } else {
                state = (s == RHDR0) ? 1u : 0u;
                marker[0] = (s == RHDR0) ? s : 0u;
            }
            break;
        case 2:
            marker[2] = s;
            state = 3;
            break;
        case 3:
            marker[3] = s;
            state = 4;
            break;
        case 4:
            marker[4] = s;
            state = 5;
            break;
        default:
            marker[5] = s;
            if (marker[5] == RHDR5 &&
                (((marker[2] ^ marker[4]) & 0x3fu) == 0x3fu)) {
                *marker_row = (uint32_t)(marker[2] | ((marker[3] & 1u) << 6));
                return true;
            }
            state = (s == RHDR0) ? 1u : 0u;
            marker[0] = (s == RHDR0) ? s : 0u;
            break;
        }
    }

    return false;
}

static bool IRAM_ATTR read_qvga_col_marker(uint32_t *marker_row,
                                           uint32_t *marker_seg,
                                           uint8_t marker[6])
{
    uint32_t state = 0;
    uint32_t scanned = 0;

    while (scanned < ROW_MARKER_SCAN_SYMBOLS) {
        uint8_t s = 0;
        if (!read_qvga_symbol_wait(&s, ROW_START_TIMEOUT_LOOPS)) {
            return false;
        }
        s &= 0x3fu;
        scanned++;

        switch (state) {
        case 0:
            if (s == RHDR0) {
                marker[0] = s;
                state = 1;
            }
            break;
        case 1:
            if (s == CHDR1) {
                marker[1] = s;
                state = 2;
            } else {
                state = (s == RHDR0) ? 1u : 0u;
                marker[0] = (s == RHDR0) ? s : 0u;
            }
            break;
        case 2:
            marker[2] = s;
            state = 3;
            break;
        case 3:
            marker[3] = s;
            state = 4;
            break;
        case 4:
            marker[4] = s;
            state = 5;
            break;
        default:
            marker[5] = s;
            if (marker[5] == CHDR5 &&
                (((marker[2] ^ (marker[3] & 0x03u) ^ marker[4]) & 0x3fu) == 0x3fu)) {
                *marker_row = (uint32_t)marker[2];
                *marker_seg = (uint32_t)(marker[3] & 0x03u);
                return true;
            }
            state = (s == RHDR0) ? 1u : 0u;
            marker[0] = (s == RHDR0) ? s : 0u;
            break;
        }
    }

    return false;
}

static uint32_t IRAM_ATTR read_qvga_data_symbols(uint8_t *syms, uint32_t count)
{
    bool prev_clk = qvga_clk_high(REG_READ(GPIO_IN_REG));
    uint32_t start_idle = 0;
    uint32_t gap_idle = 0;
    uint32_t got = 0;

    while (got < count) {
        const uint32_t lo = REG_READ(GPIO_IN_REG);
        if (!qvga_gate_high(lo)) {
            break;
        }

        const bool clk = qvga_clk_high(lo);
        if (!prev_clk && clk) {
            const uint32_t hi = REG_READ(GPIO_IN1_REG);
            g_gate_seen++;
            syms[got++] = read_qvga_sym6(lo, hi);
            g_clk_edges_seen++;
            start_idle = 0;
            gap_idle = 0;
        } else if (got == 0) {
            if (++start_idle >= ROW_START_TIMEOUT_LOOPS) {
                break;
            }
        } else if (++gap_idle >= ROW_GAP_IDLE_LOOPS) {
            break;
        }
        prev_clk = clk;
    }

    return got;
}

static void wait_for_gate_low(void)
{
    uint32_t loops = 0;
    while (qvga_gate_high(REG_READ(GPIO_IN_REG))) {
        if (++loops >= GATE_WAIT_YIELD_LOOPS) {
            vTaskDelay(1);
            loops = 0;
        }
    }
}

static void wait_for_gate_high(void)
{
    uint32_t loops = 0;
    while (!qvga_gate_high(REG_READ(GPIO_IN_REG))) {
        if (++loops >= GATE_EDGE_YIELD_LOOPS) {
            vTaskDelay(1);
            loops = 0;
        }
    }
    g_gate_seen++;
}

static bool IRAM_ATTR read_qvga_header_at_gate(uint8_t header[8])
{
    const uint32_t got = read_qvga_symbols_burst(header, 8u, 240000u);
    for (uint32_t i = 0; i < got; i++) {
        header[i] &= 0x3fu;
        note_symbol(header[i]);
    }
    if (got != 8u) {
        return false;
    }

    return header[0] == QHDR0 &&
           header[1] == QHDR1 &&
           header[2] == QHDR2 &&
           header[3] == QHDR3 &&
           (((header[4] ^ header[5]) & 0x3fu) == 0x3fu) &&
           header[6] == QHDR6 &&
           header[7] == QHDR7;
}

static inline bool unpack_rgb565_packed3(uint8_t s0, uint8_t s1, uint8_t s2, uint16_t *word)
{
    const uint16_t w = (uint16_t)(((uint16_t)(s0 & 0x3fu) << 10) |
                                  ((uint16_t)(s1 & 0x3fu) << 4) |
                                  ((uint16_t)(s2 & 0x0fu)));
    const uint8_t expected = (uint8_t)((((w >> 14) & 0x03u) ^
                                        ((w >> 8) & 0x03u) ^
                                        (w & 0x03u)) &
                                       0x03u);
    *word = w;
    return (((s2 >> 4) & 0x03u) == expected);
}

static inline void rgb565_components(uint16_t word, int *r, int *g, int *b)
{
    const uint8_t lo = (uint8_t)(word >> 8);
    const uint8_t hi = (uint8_t)(word & 0xffu);
    *r = (int)((hi >> 3) << 1);
    *g = (int)(((hi & 0x07u) << 3) | (lo >> 5));
    *b = (int)((lo & 0x1fu) << 1);
}

static inline bool color_is_bus_artifact(int r, int g, int b)
{
    const bool bad_green = (g > 44 && r < 44 && b < 44);
    const bool bad_magenta = (r > 42 && b > 42 && g < 44);
    const bool bad_cyan = (g > 42 && b > 42 && r < 44);
    const bool bad_blue = (b > 44 && r < 44 && g < 44);
    int maxc = r;
    if (g > maxc) {
        maxc = g;
    }
    if (b > maxc) {
        maxc = b;
    }
    int minc = r;
    if (g < minc) {
        minc = g;
    }
    if (b < minc) {
        minc = b;
    }

    const bool dark_color_salt = maxc <= 26 &&
                                 maxc > 8 &&
                                 (maxc - minc) > 10 &&
                                 minc <= 1;
    return bad_green || bad_magenta || bad_cyan || bad_blue || dark_color_salt;
}

static inline bool word_is_bus_artifact(uint16_t word)
{
    int r;
    int g;
    int b;
    rgb565_components(word, &r, &g, &b);
    return color_is_bus_artifact(r, g, b);
}

static inline bool word_is_dark_dropout(uint16_t word)
{
    int r;
    int g;
    int b;
    rgb565_components(word, &r, &g, &b);
    const int sum = r + g + b;
    return sum <= 18 || (sum <= 28 && b <= 2 && g <= 12);
}

static inline bool word_is_repairable_glitch(uint16_t word)
{
    return word_is_bus_artifact(word) || word_is_dark_dropout(word);
}

static inline uint32_t word_luma6(uint16_t word)
{
    int r;
    int g;
    int b;
    rgb565_components(word, &r, &g, &b);
    return (uint32_t)((r * 2) + (g * 3) + b);
}

static inline uint16_t avg_rgb565_like(uint16_t a, uint16_t b)
{
    int ar;
    int ag;
    int ab;
    int br;
    int bg;
    int bb;
    rgb565_components(a, &ar, &ag, &ab);
    rgb565_components(b, &br, &bg, &bb);
    const uint16_t r5 = (uint16_t)((ar + br) >> 2);
    const uint16_t g6 = (uint16_t)((ag + bg) >> 1);
    const uint16_t b5 = (uint16_t)((ab + bb) >> 2);
    return (uint16_t)(((g6 & 0x07u) << 13) | ((b5 & 0x1fu) << 8) |
                      ((r5 & 0x1fu) << 3) | ((g6 >> 3) & 0x07u));
}

static void summarize_frame_color(const uint16_t frame[PREVIEW_H][PREVIEW_W],
                                  frame_color_summary_t *summary)
{
    memset(summary, 0, sizeof(*summary));
    for (uint32_t y = 0; y < PREVIEW_H; y += 2) {
        for (uint32_t x = 0; x < PREVIEW_W; x += 2) {
            int rr;
            int gg;
            int bb;
            rgb565_components(frame[y][x], &rr, &gg, &bb);
            summary->r += (uint32_t)rr;
            summary->g += (uint32_t)gg;
            summary->b += (uint32_t)bb;
            summary->samples++;
            if ((rr + gg + bb) < 84) {
                summary->dark++;
            }
            if (gg > 6 && gg > (rr + 1) && gg > (bb + 2)) {
                summary->greenish++;
            }
            if (gg >= 6 && rr >= 5 && (bb + 4) < gg && (bb + 4) < rr) {
                summary->olive++;
            }
        }
    }
}

static bool frame_is_bad_green_tint(void)
{
    uint32_t r = 0;
    uint32_t g = 0;
    uint32_t b = 0;
    uint32_t samples = 0;

    for (uint32_t y = 0; y < PREVIEW_H; y += 2) {
        for (uint32_t x = 0; x < PREVIEW_W; x += 2) {
            const uint16_t word = g_build_frame[y][x];
            int rr;
            int gg;
            int bb;
            rgb565_components(word, &rr, &gg, &bb);
            r += (uint32_t)rr;
            g += (uint32_t)gg;
            b += (uint32_t)bb;
            samples++;
        }
    }

    return samples != 0 &&
           g > (samples * 14u) &&
           (g * 5u) > ((r + b) * 4u) &&
           g > (r + (samples * 4u)) &&
           g > (b + (samples * 6u));
}

static bool __attribute__((unused)) frame_is_bad_color_cast(void)
{
    uint32_t r = 0;
    uint32_t g = 0;
    uint32_t b = 0;
    uint32_t samples = 0;
    uint32_t lit = 0;
    uint32_t green_lit = 0;
    uint32_t dark = 0;
    uint32_t dark_green = 0;
    uint32_t dark_blue_zero = 0;
    uint32_t dark_r = 0;
    uint32_t dark_g = 0;
    uint32_t dark_b = 0;
    uint32_t dark_olive = 0;

    for (uint32_t y = 0; y < PREVIEW_H; y += 2) {
        for (uint32_t x = 0; x < PREVIEW_W; x += 2) {
            int rr;
            int gg;
            int bb;
            rgb565_components(g_build_frame[y][x], &rr, &gg, &bb);
            r += (uint32_t)rr;
            g += (uint32_t)gg;
            b += (uint32_t)bb;
            samples++;
            if ((rr + gg + bb) > 10) {
                lit++;
                if (gg > 8 && gg > (rr + 2) && gg > (bb + 2)) {
                    green_lit++;
                }
            }
            if ((rr + gg + bb) < 72) {
                dark++;
                dark_r += (uint32_t)rr;
                dark_g += (uint32_t)gg;
                dark_b += (uint32_t)bb;
                if (bb <= 2 && gg > 7 && rr > 7) {
                    dark_blue_zero++;
                }
                if (gg > 6 && gg > (rr + 1) && gg > (bb + 2)) {
                    dark_green++;
                }
                if (gg >= 6 && rr >= 5 && (bb + 4) < gg && (bb + 4) < rr) {
                    dark_olive++;
                }
            }
        }
    }

    if (samples == 0) {
        return false;
    }

    const uint32_t ar = r / samples;
    const uint32_t ag = g / samples;
    const uint32_t ab = b / samples;
    const bool green_cast = ag > 8u &&
                            ag > (ar + 1u) &&
                            ag > (ab + 2u) &&
                            (ag * 6u) > ((ar + ab) * 4u);
    const bool brown_or_green_cast = ab < 10u &&
                                     ag > 8u &&
                                     ar > 6u &&
                                     (ag + ar) > (ab * 4u);
    const bool blue_deficit_cast = ab < 16u &&
                                   ag > (ab + 4u) &&
                                   ar > (ab + 4u) &&
                                   (ag > 9u || ar > 9u) &&
                                   ((ag + ar) * 2u) > ((ab + 1u) * 7u);
    const bool lit_green_cast = lit > 20u && (green_lit * 5u) > lit;
    const uint32_t adr = dark_r / (dark ? dark : 1u);
    const uint32_t adg = dark_g / (dark ? dark : 1u);
    const uint32_t adb = dark_b / (dark ? dark : 1u);
    const bool dark_olive_cast = dark > (samples / 2u) &&
                                 adb <= 3u &&
                                 adr > 7u &&
                                 adg > 7u &&
                                 (dark_blue_zero * 4u) > (dark * 3u);
    const bool dark_green_cast = dark > (samples / 2u) &&
                                 (dark_green * 3u) > dark &&
                                 adg > (adb + 4u);
    const bool dark_olive_wash = dark > (samples / 2u) &&
                                 (dark_olive * 5u) > (dark * 2u) &&
                                 adg > (adb + 3u);
    return green_cast || brown_or_green_cast || blue_deficit_cast || lit_green_cast ||
           dark_olive_cast || dark_green_cast || dark_olive_wash;
}

static bool __attribute__((unused)) frame_is_temporal_green_flash(void)
{
    if (!g_stats.valid) {
        return false;
    }

    frame_color_summary_t cur;
    frame_color_summary_t prev;
    summarize_frame_color((const uint16_t (*)[PREVIEW_W])g_build_frame, &cur);

    if (xSemaphoreTake(g_frame_mutex, pdMS_TO_TICKS(2)) != pdTRUE) {
        return false;
    }
    summarize_frame_color((const uint16_t (*)[PREVIEW_W])g_frame, &prev);
    xSemaphoreGive(g_frame_mutex);

    if (cur.samples == 0 || prev.samples == 0) {
        return false;
    }

    const uint32_t cr = cur.r / cur.samples;
    const uint32_t cg = cur.g / cur.samples;
    const uint32_t cb = cur.b / cur.samples;
    const uint32_t pr = prev.r / prev.samples;
    const uint32_t pg = prev.g / prev.samples;
    const uint32_t pb = prev.b / prev.samples;
    const uint32_t cur_green_ratio = (cg * 64u) / (cr + cb + 1u);
    const uint32_t prev_green_ratio = (pg * 64u) / (pr + pb + 1u);

    const bool green_ratio_jump = cg > (pg + 2u) &&
                                  (cb + 3u) < pb &&
                                  cur_green_ratio > (prev_green_ratio + 5u);
    const bool olive_blue_drop = cg > (cb + 5u) &&
                                 cr > (cb + 5u) &&
                                 (cb + 4u) < pb &&
                                 cg >= pg;
    const bool olive_area_jump = cur.dark > (cur.samples / 3u) &&
                                 (cur.olive * 3u) > cur.dark &&
                                 cur.olive > (prev.olive + (prev.samples / 24u));
    const bool green_area_jump = (cur.greenish * 4u) > cur.samples &&
                                 cur.greenish > (prev.greenish + (prev.samples / 16u));

    return green_ratio_jump || olive_blue_drop || olive_area_jump || green_area_jump;
}

static bool __attribute__((unused)) frame_is_nearly_blank(void)
{
    uint32_t bright = 0;

    for (uint32_t y = 0; y < PREVIEW_H; y += 2) {
        for (uint32_t x = 0; x < PREVIEW_W; x += 2) {
            int rr;
            int gg;
            int bb;
            rgb565_components(g_build_frame[y][x], &rr, &gg, &bb);
            if ((rr + gg + bb) > 24) {
                bright++;
                if (bright >= 25) {
                    return false;
                }
            }
        }
    }

    return true;
}

static uint32_t scrub_artifact_pixels(void)
{
    uint32_t fixed = 0;

    for (uint32_t y = 0; y < PREVIEW_H; y++) {
        for (uint32_t x = 0; x < PREVIEW_W; x++) {
            const uint16_t word = g_build_frame[y][x];
            if (!word_is_bus_artifact(word)) {
                continue;
            }

            uint16_t replacement = word;
            if (y != 0 && !word_is_bus_artifact(g_build_frame[y - 1u][x])) {
                replacement = g_build_frame[y - 1u][x];
            } else if (x != 0 && !word_is_bus_artifact(g_build_frame[y][x - 1u])) {
                replacement = g_build_frame[y][x - 1u];
            } else if ((x + 1u) < PREVIEW_W && !word_is_bus_artifact(g_build_frame[y][x + 1u])) {
                replacement = g_build_frame[y][x + 1u];
            } else if ((y + 1u) < PREVIEW_H && !word_is_bus_artifact(g_build_frame[y + 1u][x])) {
                replacement = g_build_frame[y + 1u][x];
            }

            if (replacement != word) {
                g_build_frame[y][x] = replacement;
                fixed++;
            }
        }
    }

    if (fixed != 0) {
        g_stats.row_bad += (fixed + 7u) >> 3;
    }
    return fixed;
}

static uint32_t repair_dropout_rows_from_history(void)
{
    uint32_t fixed = 0;
    uint32_t row_flags[PREVIEW_H] = {0};
    uint32_t seg_flags[PREVIEW_H][ROW_SEGMENTS] = {{0}};

    for (uint32_t y = 0; y < PREVIEW_H; y++) {
        uint32_t row_glitches = 0;
        uint32_t longest_run = 0;
        uint32_t run = 0;
        for (uint32_t x = 0; x < PREVIEW_W; x++) {
            const bool glitch = word_is_repairable_glitch(g_build_frame[y][x]);
            if (glitch) {
                row_glitches++;
                run++;
                if (run > longest_run) {
                    longest_run = run;
                }
            } else {
                run = 0;
            }
        }
        row_flags[y] = (row_glitches >= 42u || longest_run >= 18u);

        for (uint32_t seg = 0; seg < ROW_SEGMENTS; seg++) {
            uint32_t seg_glitches = 0;
            uint32_t seg_run = 0;
            uint32_t seg_longest = 0;
            const uint32_t x0 = seg * SEG_PIXELS;
            for (uint32_t x = 0; x < SEG_PIXELS; x++) {
                const bool glitch = word_is_repairable_glitch(g_build_frame[y][x0 + x]);
                if (glitch) {
                    seg_glitches++;
                    seg_run++;
                    if (seg_run > seg_longest) {
                        seg_longest = seg_run;
                    }
                } else {
                    seg_run = 0;
                }
            }
            seg_flags[y][seg] = (seg_glitches >= 14u || seg_longest >= 10u);
        }
    }

    for (uint32_t y = 0; y < PREVIEW_H; y++) {
        for (uint32_t seg = 0; seg < ROW_SEGMENTS; seg++) {
            if (!row_flags[y] && !seg_flags[y][seg]) {
                continue;
            }
            const uint32_t x0 = seg * SEG_PIXELS;
            for (uint32_t x = 0; x < SEG_PIXELS; x++) {
                uint16_t replacement = g_prev_frame[y][x0 + x];
                if (word_is_repairable_glitch(replacement)) {
                    if (y != 0 && !word_is_repairable_glitch(g_build_frame[y - 1u][x0 + x])) {
                        replacement = g_build_frame[y - 1u][x0 + x];
                    } else if ((y + 1u) < PREVIEW_H &&
                               !word_is_repairable_glitch(g_build_frame[y + 1u][x0 + x])) {
                        replacement = g_build_frame[y + 1u][x0 + x];
                    } else {
                        replacement = g_build_frame[y][x0 + x];
                    }
                }
                if (replacement != g_build_frame[y][x0 + x]) {
                    g_build_frame[y][x0 + x] = replacement;
                    fixed++;
                }
            }
        }
    }

    if (fixed != 0) {
        g_stats.row_bad += (fixed + 15u) >> 4;
    }
    return fixed;
}

static uint32_t repair_thin_horizontal_dropouts(void)
{
    uint32_t fixed = 0;

    for (uint32_t y = 1; y + 1u < PREVIEW_H; y++) {
        uint32_t row_hits = 0;
        bool hit[PREVIEW_W] = {0};

        for (uint32_t x = 0; x < PREVIEW_W; x++) {
            const uint16_t cur = g_build_frame[y][x];
            const uint16_t up = g_build_frame[y - 1u][x];
            const uint16_t down = g_build_frame[y + 1u][x];
            const uint32_t cur_l = word_luma6(cur);
            const uint32_t up_l = word_luma6(up);
            const uint32_t down_l = word_luma6(down);
            const uint32_t avg_l = (up_l + down_l) >> 1;

            const bool vertical_line =
                !word_is_repairable_glitch(up) &&
                !word_is_repairable_glitch(down) &&
                (avg_l > 42u) &&
                ((cur_l + 44u) < avg_l);
            const bool obvious_glitch =
                word_is_repairable_glitch(cur) &&
                !word_is_repairable_glitch(g_prev_frame[y][x]);

            if (vertical_line || obvious_glitch) {
                hit[x] = true;
                row_hits++;
            }
        }

        if (row_hits < 6u) {
            continue;
        }

        for (uint32_t x = 0; x < PREVIEW_W; x++) {
            if (!hit[x]) {
                continue;
            }
            uint16_t replacement = g_prev_frame[y][x];
            if (word_is_repairable_glitch(replacement)) {
                replacement = avg_rgb565_like(g_build_frame[y - 1u][x],
                                              g_build_frame[y + 1u][x]);
            }
            if (replacement != g_build_frame[y][x]) {
                g_build_frame[y][x] = replacement;
                fixed++;
            }
        }
    }

    if (fixed != 0) {
        g_stats.row_bad += (fixed + 15u) >> 4;
    }
    return fixed;
}

static inline uint16_t repair_word_for_pixel(uint32_t pixel_idx, uint16_t *dst)
{
    const uint32_t x = pixel_idx % PREVIEW_W;
    const uint32_t y = pixel_idx / PREVIEW_W;

    if (x != 0 && !word_is_bus_artifact(dst[-1])) {
        return dst[-1];
    }
    if (y != 0) {
        const uint16_t above = g_build_frame[y - 1u][x];
        if (!word_is_bus_artifact(above)) {
            return above;
        }
    }
    if (!word_is_bus_artifact(*dst)) {
        return *dst;
    }
    if (x != 0) {
        return dst[-1];
    }
    return 0u;
}

static void publish_frame(uint16_t first_word, uint32_t row_repairs)
{
    const uint32_t fixed_pixels = scrub_artifact_pixels();
    const uint32_t dropout_fixed = 0;
    const uint32_t line_fixed = repair_thin_horizontal_dropouts();
    bool hold_frame = false;

    if (g_stats.valid && row_repairs > ROW_REPAIR_HOLD_THRESHOLD) {
        g_stats.row_hold++;
        g_stats.partial_publish++;
    }

    if (g_stats.valid && (fixed_pixels + dropout_fixed + line_fixed) > 9000u) {
        g_stats.artifact_hold++;
        g_stats.partial_publish++;
    }

    if (g_stats.valid && frame_is_bad_green_tint()) {
        g_stats.tint_hold++;
        g_stats.partial_publish++;
        hold_frame = true;
    }

    if (hold_frame) {
        return;
    }

    g_stats.frame_id++;
    g_stats.complete++;
    g_stats.first_word = first_word;
    g_stats.valid = 1;
    if (xSemaphoreTake(g_frame_mutex, pdMS_TO_TICKS(2)) == pdTRUE) {
        memcpy(g_frame, g_build_frame, sizeof(g_frame));
        xSemaphoreGive(g_frame_mutex);
    }
    if (xSemaphoreTake(g_serial_frame_mutex, pdMS_TO_TICKS(2)) == pdTRUE) {
        memcpy(g_serial_frame, g_build_frame, sizeof(g_serial_frame));
        g_serial_frame_stats = g_stats;
        g_serial_frame_seq++;
        xSemaphoreGive(g_serial_frame_mutex);
        xSemaphoreGive(g_serial_wake);
    }
}

static void capture_task(void *arg)
{
    (void)arg;
    configure_gpio_receiver();

    while (true) {
        bool have_prev_frame = false;
        if (xSemaphoreTake(g_frame_mutex, pdMS_TO_TICKS(1)) == pdTRUE) {
            have_prev_frame = g_stats.valid != 0;
            if (have_prev_frame) {
                memcpy(g_prev_frame, g_frame, sizeof(g_prev_frame));
                memcpy(g_build_frame, g_frame, sizeof(g_build_frame));
            }
            xSemaphoreGive(g_frame_mutex);
        }
        if (!have_prev_frame) {
            memset(g_prev_frame, 0, sizeof(g_prev_frame));
            memset(g_build_frame, 0, sizeof(g_build_frame));
        }

        wait_for_gate_low();
        wait_for_gate_high();

        uint8_t header[8] = {0};
        uint16_t first_word = 0;
        uint32_t first_count = 8u;
        uint32_t payload_symbols = 0;
        uint32_t pixel_idx = 0;
        bool first_word_set = false;
        const int64_t capture_start_us = esp_timer_get_time();
        if (g_last_gate_start_us != 0) {
            g_stats.gate_period_us = (uint32_t)(capture_start_us - g_last_gate_start_us);
        }
        g_last_gate_start_us = capture_start_us;
        bool ok = read_qvga_header_at_gate(header);

        const bool header_ok = header[0] == QHDR0 &&
                               header[1] == QHDR1 &&
                               header[2] == QHDR2 &&
                               header[3] == QHDR3 &&
                               (((header[4] ^ header[5]) & 0x3fu) == 0x3fu) &&
                               header[6] == QHDR6 &&
                               header[7] == QHDR7;
        g_stats.sync_count++;
        g_stats.sync_state = header_ok ? 8 : 1;
        if (!header_ok) {
            g_stats.row_bad++;
        }
        for (uint32_t i = 0; i < 8u; i++) {
            g_stats.first_syms[i] = header[i] & 0x3fu;
        }
        g_stats.payload_symbols = 0;

        uint16_t *dst = &g_build_frame[0][0];

        if (!ok) {
            g_no_clock_abort++;
            g_stats.partial++;
            vTaskDelay(1);
            continue;
        }

        uint32_t bad_used = 0;
        uint32_t short_rows = 0;
        uint32_t row = 0;
        while (ok && row < PREVIEW_H) {
            uint8_t marker[6] = {0};
            uint32_t marker_row = row;
            if (!read_qvga_row_marker(&marker_row, marker)) {
                g_stats.row_bad++;
                ok = false;
                break;
            }
            note_symbol_batch(marker, sizeof(marker));
            append_first_symbols(&first_count, marker, sizeof(marker));
            payload_symbols += sizeof(marker);

            if (marker_row >= PREVIEW_H) {
                g_stats.row_bad++;
                marker_row = row;
            }
            if (marker_row > row) {
                short_rows += marker_row - row;
                row = marker_row;
            } else if (marker_row != row) {
                g_stats.row_bad++;
            }

            for (uint32_t seg = 0; ok && seg < ROW_SEGMENTS; seg++) {
                const uint32_t seg_col = seg * SEG_PIXELS;
                pixel_idx = row * PREVIEW_W + seg_col;
                dst = &g_build_frame[row][seg_col];
                const uint32_t got = read_qvga_data_symbols(g_row_symbols, SEG_SYMBOLS);
                if (got != 0) {
                    note_symbol_batch(g_row_symbols, got);
                    append_first_symbols(&first_count, g_row_symbols, got);
                }
                payload_symbols += got;

                if (got == 0) {
                    g_stats.row_bad++;
                    ok = false;
                    break;
                }
                if (got != SEG_SYMBOLS) {
                    const uint32_t missing = SEG_SYMBOLS - got;
                    short_rows++;
                    bad_used += (missing + (SYMBOLS_PER_PIXEL - 1u)) / SYMBOLS_PER_PIXEL;
                    g_stats.row_bad++;
                }

                for (uint32_t col = 0; col < SEG_PIXELS; col++) {
                    const uint32_t i = col * SYMBOLS_PER_PIXEL;
                    uint16_t word = 0;
                    if ((i + 2u) >= got) {
                        bad_used++;
                        word = repair_word_for_pixel(pixel_idx, dst);
                    } else if (!unpack_rgb565_packed3(g_row_symbols[i],
                                                      g_row_symbols[i + 1u],
                                                      g_row_symbols[i + 2u],
                                                      &word)) {
                        bad_used++;
                        word = repair_word_for_pixel(pixel_idx, dst);
                    }

                    if (pixel_idx == 0) {
                        first_word = word;
                        first_word_set = true;
                    }
                    *dst++ = word;
                    pixel_idx++;
                }

                if ((seg + 1u) < ROW_SEGMENTS) {
                    uint8_t col_marker[6] = {0};
                    uint32_t marker_seg = seg;
                    uint32_t marker_row2 = row;
                    if (!read_qvga_col_marker(&marker_row2, &marker_seg, col_marker)) {
                        g_stats.row_bad++;
                        ok = false;
                        break;
                    }
                    note_symbol_batch(col_marker, sizeof(col_marker));
                    append_first_symbols(&first_count, col_marker, sizeof(col_marker));
                    payload_symbols += sizeof(col_marker);
                    if (marker_row2 != row || marker_seg != seg) {
                        g_stats.row_bad++;
                    }
                }
            }
            row++;
        }
        if (ok && !first_word_set) {
            first_word = g_build_frame[0][0];
        }
        if (ok && row != PREVIEW_H) {
            ok = false;
            g_stats.row_bad++;
        }
        if (ok && bad_used > MAX_BAD_PIXELS_PER_FRAME) {
            ok = false;
            g_stats.row_bad += bad_used;
        }
        const int64_t capture_end_us = esp_timer_get_time();
        g_stats.capture_us = (uint32_t)(capture_end_us - capture_start_us);
        g_stats.payload_symbols = payload_symbols;
        g_stats.row_resync += bad_used + short_rows;

        if (ok) {
            publish_frame(first_word, bad_used + short_rows);
        } else {
            g_no_clock_abort++;
            g_stats.partial++;
        }

        if ((g_stats.sync_count & 7u) == 0) {
            vTaskDelay(1);
        } else {
            taskYIELD();
        }
    }
}

static void configure_gpio_receiver(void)
{
    const uint64_t data_mask = (1ULL << PIN_D0) | (1ULL << PIN_D1) | (1ULL << PIN_D2) |
                               (1ULL << PIN_D4) | (1ULL << PIN_QCLK) |
                               (1ULL << PIN_D6) | (1ULL << PIN_D7);

    gpio_config_t data_cfg = {
        .pin_bit_mask = data_mask,
        .mode = GPIO_MODE_INPUT,
        .pull_up_en = GPIO_PULLUP_DISABLE,
        .pull_down_en = GPIO_PULLDOWN_DISABLE,
        .intr_type = GPIO_INTR_DISABLE,
    };
    ESP_ERROR_CHECK(gpio_config(&data_cfg));

    gpio_config_t gate_cfg = {
        .pin_bit_mask = (1ULL << PIN_GATE),
        .mode = GPIO_MODE_INPUT,
        .pull_up_en = GPIO_PULLUP_ENABLE,
        .pull_down_en = GPIO_PULLDOWN_DISABLE,
        .intr_type = GPIO_INTR_DISABLE,
    };
    ESP_ERROR_CHECK(gpio_config(&gate_cfg));
}

static bool copy_latest_frame(void)
{
    bool valid = false;
    if (xSemaphoreTake(g_frame_mutex, pdMS_TO_TICKS(100)) == pdTRUE) {
        valid = g_stats.valid != 0;
        memcpy(g_http_frame, g_frame, sizeof(g_http_frame));
        xSemaphoreGive(g_frame_mutex);
    }
    return valid;
}

static esp_err_t raw565_handler(httpd_req_t *req)
{
    copy_latest_frame();
    preview_stats_t s;
    memcpy(&s, (const void *)&g_stats, sizeof(s));
    char frame_hdr[16];
    snprintf(frame_hdr, sizeof(frame_hdr), "%" PRIu32, s.frame_id);
    httpd_resp_set_type(req, "application/octet-stream");
    httpd_resp_set_hdr(req, "Cache-Control", "no-store");
    httpd_resp_set_hdr(req, "X-Frame-Id", frame_hdr);
    return httpd_resp_send(req, (const char *)g_http_frame, sizeof(g_http_frame));
}

static esp_err_t bmp_handler(httpd_req_t *req)
{
    copy_latest_frame();

    const uint32_t row_bytes = BMP_W * 3u;
    const uint32_t image_bytes = row_bytes * BMP_H;
    const uint32_t file_bytes = 54u + image_bytes;
    uint8_t hdr[54] = {0};
    uint8_t row[BMP_W * 3];

    hdr[0] = 'B';
    hdr[1] = 'M';
    put_le32(&hdr[2], file_bytes);
    put_le32(&hdr[10], 54);
    put_le32(&hdr[14], 40);
    put_le32(&hdr[18], BMP_W);
    put_le32(&hdr[22], (uint32_t)(-(int32_t)BMP_H));
    put_le16(&hdr[26], 1);
    put_le16(&hdr[28], 24);
    put_le32(&hdr[34], image_bytes);

    httpd_resp_set_type(req, "image/bmp");
    httpd_resp_set_hdr(req, "Cache-Control", "no-store");
    esp_err_t err = httpd_resp_send_chunk(req, (const char *)hdr, sizeof(hdr));
    if (err != ESP_OK) {
        return err;
    }

    for (uint32_t y = 0; y < BMP_H; y++) {
        const uint16_t *src = g_http_frame[y / BMP_SCALE];
        for (uint32_t x = 0; x < BMP_W; x++) {
            const uint16_t word = src[x / BMP_SCALE];
            const uint8_t lo = (uint8_t)(word >> 8);
            const uint8_t hi = (uint8_t)(word & 0xffu);
            const uint8_t r5 = (uint8_t)(hi >> 3);
            const uint8_t g6 = (uint8_t)(((hi & 0x07u) << 3) | (lo >> 5));
            const uint8_t b5 = (uint8_t)(lo & 0x1fu);
            row[x * 3u + 0u] = (uint8_t)((b5 << 3) | (b5 >> 2));
            row[x * 3u + 1u] = (uint8_t)((g6 << 2) | (g6 >> 4));
            row[x * 3u + 2u] = (uint8_t)((r5 << 3) | (r5 >> 2));
        }
        err = httpd_resp_send_chunk(req, (const char *)row, sizeof(row));
        if (err != ESP_OK) {
            return err;
        }
    }
    return httpd_resp_send_chunk(req, NULL, 0);
}

static esp_err_t stats_handler(httpd_req_t *req)
{
    preview_stats_t s;
    memcpy(&s, (const void *)&g_stats, sizeof(s));

    char first[128];
    char *p = first;
    char *end = first + sizeof(first);
    for (size_t i = 0; i < sizeof(s.first_syms); i++) {
        int n = snprintf(p, (size_t)(end - p), "%s%u", (i == 0) ? "" : ",", s.first_syms[i]);
        if (n < 0 || p + n >= end) {
            break;
        }
        p += n;
    }

    char recent[256];
    p = recent;
    end = recent + sizeof(recent);
    const uint32_t recent_pos = g_recent_pos;
    for (size_t i = 0; i < RECENT_SYMS; i++) {
        const uint8_t sym = g_recent_syms[(recent_pos + i) & (RECENT_SYMS - 1u)];
        int n = snprintf(p, (size_t)(end - p), "%s%u", (i == 0) ? "" : ",", sym);
        if (n < 0 || p + n >= end) {
            break;
        }
        p += n;
    }

    const uint32_t gpio_lo = REG_READ(GPIO_IN_REG);
    const uint32_t gpio_hi = REG_READ(GPIO_IN1_REG);
    const uint8_t sdram_diag = s.first_syms[4] & 0x3fu;
    const uint8_t sdram_diag_page = sdram_diag >> 2;
    const uint8_t sdram_diag_bits = sdram_diag & 3u;
    char json[1536];
    snprintf(json, sizeof(json),
             "{\"build\":%u,\"transport\":\"fpga_native_160x120_tile_grid_cnn_orange20_fpga\","
             "\"sdram_clk_mhz\":24,\"sdram_diag\":%u,\"sdram_diag_page\":%u,"
             "\"sdram_diag_bits\":%u,"
             "\"valid\":%u,\"frame\":%" PRIu32 ",\"complete\":%" PRIu32 ","
             "\"symbols\":%" PRIu32 ",\"sync\":%" PRIu32 ",\"partial\":%" PRIu32 ","
             "\"row_resync\":%" PRIu32 ",\"row_bad\":%" PRIu32 ",\"tint_hold\":%" PRIu32 ","
             "\"partial_publish\":%" PRIu32 ",\"row_hold\":%" PRIu32 ","
             "\"artifact_hold\":%" PRIu32 ",\"blank_hold\":%" PRIu32 ","
             "\"overflow\":%" PRIu32 ",\"ring\":%u,\"ring_max\":%" PRIu32 ","
             "\"payload\":%" PRIu32 ",\"capture_us\":%" PRIu32 ",\"gate_period_us\":%" PRIu32 ","
             "\"last_sym\":%u,\"sync_state\":%u,"
             "\"first_word\":%u,\"cpu_mhz\":%" PRIu32 ","
             "\"gpio_lo\":%" PRIu32 ",\"gpio_hi\":%" PRIu32 ",\"gate\":%u,\"clk\":%u,"
             "\"gate_seen\":%" PRIu32 ",\"clk_edges\":%" PRIu32 ",\"no_clk_abort\":%" PRIu32 ","
             "\"first\":[%s],\"recent\":[%s],"
             "\"wire\":\"native_160x120\",\"bmp\":\"160x120\"}",
             BUILD_ID, sdram_diag, sdram_diag_page, sdram_diag_bits,
             s.valid, s.frame_id, s.complete, s.symbols, s.sync_count, s.partial,
             s.row_resync, s.row_bad, s.tint_hold, s.partial_publish,
             s.row_hold, s.artifact_hold, s.blank_hold,
             s.overflow, s.ring_depth, s.max_ring_depth,
             s.payload_symbols, s.capture_us, s.gate_period_us, s.last_sym,
             s.sync_state, s.first_word, g_cpu_cycles_per_us,
             gpio_lo, gpio_hi, qvga_gate_high(gpio_lo) ? 1u : 0u,
             qvga_clk_high(gpio_lo) ? 1u : 0u,
             g_gate_seen, g_clk_edges_seen, g_no_clock_abort, first, recent);

    httpd_resp_set_type(req, "application/json");
    httpd_resp_set_hdr(req, "Cache-Control", "no-store");
    return httpd_resp_sendstr(req, json);
}

static const char INDEX_HTML[] =
"<!doctype html><html><head><meta charset='utf-8'>"
"<meta name='viewport' content='width=device-width,initial-scale=1'>"
"<title>AiCamera</title><style>"
"body{margin:0;background:#050505;color:white;font:14px system-ui,Segoe UI,Arial,sans-serif}"
"header{display:flex;align-items:center;gap:14px;flex-wrap:wrap;padding:8px 10px;border-bottom:1px solid #222}"
"h1{font-size:24px;line-height:1;margin:0} .pill{background:#142312;color:#b8ff9e;padding:4px 8px;border-radius:4px}"
"main{padding:8px 10px} canvas{width:480px;height:360px;max-width:calc(100vw - 20px);image-rendering:pixelated;background:#111;border:1px solid #333}"
"pre{white-space:pre-wrap;word-break:break-word;color:#ddd;font-size:12px;line-height:1.25}"
"</style></head><body><header><h1>AiCamera FPGA -> ESP32 live preview</h1>"
"<span>FPGA native 160x120 tile-grid CNN orange20 detector on FPGA</span><span id='fps' class='pill'>FPS ...</span>"
"</header><main><canvas id='view' width='160' height='120'></canvas><pre id='txt'></pre></main>"
"<script>"
"const W=160,H=120,S=1,DW=160,DH=120;"
"const c=document.getElementById('view'),ctx=c.getContext('2d',{alpha:false});"
"const img=ctx.createImageData(DW,DH),txt=document.getElementById('txt'),fps=document.getElementById('fps');"
"let last=-1,samples=[],lastStats=0;"
"function rgb(word){const lo=word>>8,hi=word&255;"
"const r5=hi>>3,g6=((hi&7)<<3)|(lo>>5),b5=lo&31;"
"return [(r5<<3)|(r5>>2),(g6<<2)|(g6>>4),(b5<<3)|(b5>>2)];}"
"function drawBytes(b){let p=0;"
"for(let y=0;y<H;y++)for(let x=0;x<W;x++){const w=b[p]|(b[p+1]<<8);p+=2;const q=rgb(w);"
"for(let yy=0;yy<S;yy++)for(let xx=0;xx<S;xx++){const di=((y*S+yy)*DW+x*S+xx)*4;"
"img.data[di]=q[0];img.data[di+1]=q[1];img.data[di+2]=q[2];img.data[di+3]=255;}}ctx.putImageData(img,0,0);}"
"function rate(ms){const now=performance.now();const a=samples.filter(s=>now-s.t<=ms);"
"return a.length>1?((a[a.length-1].f-a[0].f)/((a[a.length-1].t-a[0].t)/1000)):0;}"
"async function poll(){try{const r=await fetch('/raw565?'+Date.now(),{cache:'no-store'});"
"const fid=Number(r.headers.get('X-Frame-Id')||0),now=performance.now();"
"if(fid!==last){last=fid;samples.push({t:now,f:fid});samples=samples.filter(v=>now-v.t<30000);"
"drawBytes(new Uint8Array(await r.arrayBuffer()));}else{await r.arrayBuffer();}"
"if(now-lastStats>1000){lastStats=now;const s=await (await fetch('/stats?'+Date.now(),{cache:'no-store'})).json();"
"txt.textContent=JSON.stringify(s);}"
"fps.textContent='FPS 5s '+rate(5000).toFixed(2)+' / 30s '+rate(30000).toFixed(2);}"
 "catch(e){txt.textContent=String(e)}setTimeout(poll,10)}poll();"
"</script></body></html>";

static esp_err_t root_handler(httpd_req_t *req)
{
    httpd_resp_set_type(req, "text/html");
    httpd_resp_set_hdr(req, "Cache-Control", "no-store");
    return httpd_resp_send(req, INDEX_HTML, HTTPD_RESP_USE_STRLEN);
}

static void start_web_server(void)
{
    httpd_config_t cfg = HTTPD_DEFAULT_CONFIG();
    cfg.server_port = 80;
    cfg.ctrl_port = 32768;
    cfg.stack_size = 8192;
    cfg.max_uri_handlers = 8;
    cfg.lru_purge_enable = true;

    httpd_handle_t server = NULL;
    ESP_ERROR_CHECK(httpd_start(&server, &cfg));

    const httpd_uri_t root = {.uri = "/", .method = HTTP_GET, .handler = root_handler};
    const httpd_uri_t raw = {.uri = "/raw565", .method = HTTP_GET, .handler = raw565_handler};
    const httpd_uri_t bmp = {.uri = "/bmp", .method = HTTP_GET, .handler = bmp_handler};
    const httpd_uri_t stats = {.uri = "/stats", .method = HTTP_GET, .handler = stats_handler};
    const httpd_uri_t camdebug = {.uri = "/camdebug", .method = HTTP_GET, .handler = stats_handler};

    ESP_ERROR_CHECK(httpd_register_uri_handler(server, &root));
    ESP_ERROR_CHECK(httpd_register_uri_handler(server, &raw));
    ESP_ERROR_CHECK(httpd_register_uri_handler(server, &bmp));
    ESP_ERROR_CHECK(httpd_register_uri_handler(server, &stats));
    ESP_ERROR_CHECK(httpd_register_uri_handler(server, &camdebug));
}

static void wifi_event_handler(void *arg, esp_event_base_t base, int32_t id, void *data)
{
    (void)arg;

    if (base == WIFI_EVENT && id == WIFI_EVENT_STA_START) {
        esp_wifi_connect();
    } else if (base == WIFI_EVENT && id == WIFI_EVENT_STA_DISCONNECTED) {
        ESP_LOGW(TAG, "Wi-Fi disconnected, retrying");
        esp_wifi_connect();
    } else if (base == IP_EVENT && id == IP_EVENT_STA_GOT_IP) {
        const ip_event_got_ip_t *event = (const ip_event_got_ip_t *)data;
        ESP_LOGI(TAG, "Wi-Fi ready at http://" IPSTR, IP2STR(&event->ip_info.ip));
        xEventGroupSetBits(g_wifi_events, WIFI_READY_BIT);
    }
}

static void start_wifi(void)
{
    g_wifi_events = xEventGroupCreate();
    ESP_ERROR_CHECK(esp_netif_init());
    ESP_ERROR_CHECK(esp_event_loop_create_default());

    esp_netif_create_default_wifi_sta();
    wifi_init_config_t cfg = WIFI_INIT_CONFIG_DEFAULT();
    ESP_ERROR_CHECK(esp_wifi_init(&cfg));
    ESP_ERROR_CHECK(esp_event_handler_instance_register(WIFI_EVENT, ESP_EVENT_ANY_ID, wifi_event_handler, NULL, NULL));
    ESP_ERROR_CHECK(esp_event_handler_instance_register(IP_EVENT, IP_EVENT_STA_GOT_IP, wifi_event_handler, NULL, NULL));

    wifi_config_t sta = {0};
    snprintf((char *)sta.sta.ssid, sizeof(sta.sta.ssid), "%s", WIFI_SSID);
#if WIFI_USE_ENTERPRISE
    const char *identity = (strlen(WIFI_EAP_IDENTITY) != 0) ? WIFI_EAP_IDENTITY : WIFI_EAP_USERNAME;
    ESP_ERROR_CHECK(esp_wifi_set_mode(WIFI_MODE_STA));
    ESP_ERROR_CHECK(esp_wifi_set_config(WIFI_IF_STA, &sta));
    ESP_ERROR_CHECK(esp_eap_client_set_identity((const unsigned char *)identity, strlen(identity)));
    ESP_ERROR_CHECK(esp_eap_client_set_username((const unsigned char *)WIFI_EAP_USERNAME, strlen(WIFI_EAP_USERNAME)));
    ESP_ERROR_CHECK(esp_eap_client_set_password((const unsigned char *)WIFI_EAP_PASSWORD, strlen(WIFI_EAP_PASSWORD)));
    ESP_ERROR_CHECK(esp_eap_client_set_ttls_phase2_method(ESP_EAP_TTLS_PHASE2_MSCHAPV2));
    ESP_ERROR_CHECK(esp_wifi_sta_enterprise_enable());
#else
    snprintf((char *)sta.sta.password, sizeof(sta.sta.password), "%s", WIFI_PASSWORD);
    ESP_ERROR_CHECK(esp_wifi_set_mode(WIFI_MODE_STA));
    ESP_ERROR_CHECK(esp_wifi_set_config(WIFI_IF_STA, &sta));
#endif
    ESP_ERROR_CHECK(esp_wifi_start());
    ESP_ERROR_CHECK(esp_wifi_set_ps(WIFI_PS_NONE));

    EventBits_t bits = xEventGroupWaitBits(g_wifi_events, WIFI_READY_BIT, pdFALSE, pdFALSE, pdMS_TO_TICKS(45000));
    if ((bits & WIFI_READY_BIT) == 0) {
        ESP_LOGW(TAG, "STA not connected yet; starting web server on any later interface");
    }
}

void app_main(void)
{
    esp_err_t err = nvs_flash_init();
    if (err == ESP_ERR_NVS_NO_FREE_PAGES || err == ESP_ERR_NVS_NEW_VERSION_FOUND) {
        ESP_ERROR_CHECK(nvs_flash_erase());
        ESP_ERROR_CHECK(nvs_flash_init());
    } else {
        ESP_ERROR_CHECK(err);
    }

    memset((void *)&g_stats, 0, sizeof(g_stats));
    g_cpu_cycles_per_us = esp_rom_get_cpu_ticks_per_us();
    g_frame_mutex = xSemaphoreCreateMutex();
    ESP_ERROR_CHECK(g_frame_mutex ? ESP_OK : ESP_ERR_NO_MEM);
    g_serial_mutex = xSemaphoreCreateMutex();
    ESP_ERROR_CHECK(g_serial_mutex ? ESP_OK : ESP_ERR_NO_MEM);
    g_serial_frame_mutex = xSemaphoreCreateMutex();
    ESP_ERROR_CHECK(g_serial_frame_mutex ? ESP_OK : ESP_ERR_NO_MEM);
    g_serial_wake = xSemaphoreCreateBinary();
    ESP_ERROR_CHECK(g_serial_wake ? ESP_OK : ESP_ERR_NO_MEM);

    start_serial_stream();
    xTaskCreatePinnedToCore(capture_task, "capture", 4096, NULL, 18, NULL, 1);
    xTaskCreatePinnedToCore(serial_frame_task, "serial_frame", 4096, NULL, 12, NULL, 0);
    xTaskCreatePinnedToCore(status_task, "status", 3072, NULL, 6, NULL, 0);
}
