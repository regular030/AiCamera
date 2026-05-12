// AiCamera ESP32 bridge: true 160x120 live preview receiver.
//
// The FPGA owns camera capture, downsample, and color packing. The ESP32 only
// samples the FPGA's phase-tagged RGB565 stream and serves the received pixels.

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
#include "esp_timer.h"
#include "esp_wifi.h"
#include "freertos/FreeRTOS.h"
#include "freertos/event_groups.h"
#include "freertos/semphr.h"
#include "freertos/task.h"
#include "nvs_flash.h"
#include "soc/gpio_reg.h"
#include "soc/soc.h"
#include "driver/gpio.h"

#include "wifi_profile.h"

#if WIFI_USE_ENTERPRISE
#include "esp_eap_client.h"
#endif

#define BUILD_ID 325

#define PREVIEW_W 160
#define PREVIEW_H 120
#define FRAME_PIXELS (PREVIEW_W * PREVIEW_H)
#define SYMBOLS_PER_PIXEL 3
#define FRAME_SYMBOLS (FRAME_PIXELS * SYMBOLS_PER_PIXEL)
#define ROW_SYMBOLS (PREVIEW_W * SYMBOLS_PER_PIXEL)
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

#define RECENT_SYMS 64
#define GATE_WAIT_YIELD_LOOPS 250000u
#define GATE_EDGE_YIELD_LOOPS 4000000u

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
static uint8_t g_row_symbols[ROW_SYMBOLS];
static preview_stats_t g_stats;
static EventGroupHandle_t g_wifi_events;
static portMUX_TYPE g_capture_spinlock = portMUX_INITIALIZER_UNLOCKED;
static volatile uint32_t g_gate_seen;
static volatile uint32_t g_clk_edges_seen;
static volatile uint32_t g_no_clock_abort;
static int64_t g_last_gate_start_us;

static void configure_gpio_receiver(void);
static void publish_frame(uint16_t first_word, uint8_t row_repairs);

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
        const bool clk = qvga_clk_high(lo);
        if (!prev_clk && clk) {
            const uint32_t hi = REG_READ(GPIO_IN1_REG);
            if (qvga_gate_high(lo)) {
                g_gate_seen++;
            }
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

static void wait_for_gate_low(void)
{
    uint32_t loops = 0;
    while (qvga_gate_high(REG_READ(GPIO_IN_REG))) {
        if (++loops >= GATE_WAIT_YIELD_LOOPS) {
            taskYIELD();
            loops = 0;
        }
    }
}

static void wait_for_gate_high(void)
{
    uint32_t loops = 0;
    while (!qvga_gate_high(REG_READ(GPIO_IN_REG))) {
        if (++loops >= GATE_EDGE_YIELD_LOOPS) {
            taskYIELD();
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

static void publish_frame(uint16_t first_word, uint8_t row_repairs)
{
    const uint32_t fixed_pixels = scrub_artifact_pixels();
    bool hold_frame = false;

    if (g_stats.valid && row_repairs > 1) {
        g_stats.row_hold++;
        g_stats.partial_publish++;
        hold_frame = true;
    }

    if (g_stats.valid && fixed_pixels > 7200u) {
        g_stats.artifact_hold++;
        g_stats.partial_publish++;
        hold_frame = true;
    }

    if (g_stats.valid && frame_is_bad_green_tint()) {
        g_stats.tint_hold++;
        g_stats.partial_publish++;
        hold_frame = true;
    }

    if (hold_frame) {
        return;
    }

    if (xSemaphoreTake(g_frame_mutex, pdMS_TO_TICKS(10)) == pdTRUE) {
        memcpy(g_frame, g_build_frame, sizeof(g_frame));
        g_stats.frame_id++;
        g_stats.complete++;
        g_stats.first_word = first_word;
        g_stats.valid = 1;
        xSemaphoreGive(g_frame_mutex);
    }
}

static void capture_task(void *arg)
{
    (void)arg;
    configure_gpio_receiver();

    while (true) {
        wait_for_gate_low();
        wait_for_gate_high();

        uint8_t header[8] = {0};
        uint16_t first_word = 0;
        uint32_t first_count = 8u;
        uint32_t payload_symbols = 0;
        uint32_t pixel_idx = 0;
        const int64_t capture_start_us = esp_timer_get_time();
        if (g_last_gate_start_us != 0) {
            g_stats.gate_period_us = (uint32_t)(capture_start_us - g_last_gate_start_us);
        }
        g_last_gate_start_us = capture_start_us;
        portENTER_CRITICAL(&g_capture_spinlock);
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
            portEXIT_CRITICAL(&g_capture_spinlock);
            g_no_clock_abort++;
            g_stats.partial++;
            continue;
        }

        for (uint32_t row = 0; row < PREVIEW_H && ok; row++) {
            const uint32_t got = read_qvga_symbols_burst(g_row_symbols, ROW_SYMBOLS, 160000u);
            if (got != ROW_SYMBOLS) {
                note_symbol_batch(g_row_symbols, got);
                append_first_symbols(&first_count, g_row_symbols, got);
                payload_symbols += got;
                ok = false;
                break;
            }

            note_symbol_batch(g_row_symbols, ROW_SYMBOLS);
            append_first_symbols(&first_count, g_row_symbols, ROW_SYMBOLS);
            payload_symbols += ROW_SYMBOLS;

            for (uint32_t x = 0; x < PREVIEW_W; x++) {
                const uint32_t base = x * SYMBOLS_PER_PIXEL;
                uint8_t phase_syms[SYMBOLS_PER_PIXEL] = {
                    g_row_symbols[base],
                    g_row_symbols[base + 1u],
                    g_row_symbols[base + 2u],
                };

                uint16_t word = 0;
                if (!unpack_rgb565_packed3(phase_syms[0], phase_syms[1], phase_syms[2], &word)) {
                    g_stats.row_resync++;
                    ok = false;
                }
                if (!ok) {
                    break;
                }

                if (pixel_idx == 0) {
                    first_word = word;
                }
                *dst++ = word;
                pixel_idx++;
            }
        }
        portEXIT_CRITICAL(&g_capture_spinlock);

        const int64_t capture_end_us = esp_timer_get_time();
        g_stats.capture_us = (uint32_t)(capture_end_us - capture_start_us);
        g_stats.payload_symbols = payload_symbols;

        if (ok) {
            publish_frame(first_word, 0);
        } else {
            g_no_clock_abort++;
            g_stats.partial++;
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
    char json[1536];
    snprintf(json, sizeof(json),
             "{\"build\":%u,\"transport\":\"fpga_native_160x120_tile_grid_cnn_orange20_fpga\","
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
             BUILD_ID, s.valid, s.frame_id, s.complete, s.symbols, s.sync_count, s.partial,
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

    xTaskCreatePinnedToCore(capture_task, "capture", 4096, NULL, 18, NULL, 1);

    start_wifi();
    start_web_server();
    ESP_LOGI(TAG, "AiCamera build %u ready", BUILD_ID);
}
