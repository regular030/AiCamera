#!/usr/bin/env python3
"""AiCamera serial RGB565 preview server.

The ESP32 sends:
  32-byte little-endian header:
    magic[8] = b"AICAMF1\\0"
    u16 width, height, format=0x0565, header_len=32
    u32 frame_id, payload_len, capture_us, gate_period_us
  payload_len bytes of little-endian RGB565 pixels.

This script keeps the newest frame and serves a localhost canvas preview.
"""

from __future__ import annotations

import argparse
import json
import struct
import sys
import threading
import time
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer
from urllib.parse import urlparse

try:
    import serial
    from serial.tools import list_ports
except ImportError:
    print("Missing pyserial. Install it with: python -m pip install pyserial", file=sys.stderr)
    raise


FRAME_MAGIC = b"AICAMF1\0"
STATUS_MAGIC = b"AICAMS1\0"
HEADER = struct.Struct("<8sHHHHIIII")
STATUS = struct.Struct("<8sHH13I")
FORMAT_RGB565_LE = 0x0565
FORMAT_RGB444_PACKED = 0x0444
FORMAT_RGB332_PACKED = 0x0332
DEFAULT_READ_SIZE = 32768
DEFAULT_READ_TIMEOUT = 0.01


HTML = r"""<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>AiCamera Serial Preview</title>
<style>
body{margin:0;background:#050505;color:white;font:14px system-ui,Segoe UI,Arial,sans-serif}
header{display:flex;gap:14px;align-items:center;flex-wrap:wrap;padding:8px 10px;border-bottom:1px solid #222}
h1{font-size:24px;line-height:1;margin:0}
.pill{background:#132513;color:#b8ff9e;padding:4px 8px;border-radius:4px}
main{padding:8px 10px}
canvas{width:640px;height:480px;max-width:calc(100vw - 20px);image-rendering:pixelated;background:#111;border:1px solid #333}
pre{white-space:pre-wrap;word-break:break-word;color:#ddd;font-size:12px;line-height:1.25}
</style>
</head>
<body>
<header>
<h1>AiCamera serial preview</h1>
<span>FPGA RGB565 160x120 -> ESP32 serial -> localhost</span>
<span id="fps" class="pill">FPS ...</span>
</header>
<main>
<canvas id="view" width="160" height="120"></canvas>
<pre id="txt"></pre>
</main>
<script>
const W=160,H=120;
const c=document.getElementById('view');
const ctx=c.getContext('2d',{alpha:false});
const img=ctx.createImageData(W,H);
const txt=document.getElementById('txt');
const fps=document.getElementById('fps');
let last=-1;
let lastStatsPoll=0;
function rgb565le(loByte,hiByte){
  const word=loByte|(hiByte<<8);
  const lo=word>>8, hi=word&255;
  const r5=hi>>3, g6=((hi&7)<<3)|(lo>>5), b5=lo&31;
  return [(r5<<3)|(r5>>2),(g6<<2)|(g6>>4),(b5<<3)|(b5>>2)];
}
function drawBytes(b,label){
  let p=0;
  for(let y=0;y<H;y++){
    for(let x=0;x<W;x++){
      const q=rgb565le(b[p],b[p+1]); p+=2;
      const i=(y*W+x)*4;
      img.data[i]=q[0]; img.data[i+1]=q[1]; img.data[i+2]=q[2]; img.data[i+3]=255;
    }
  }
  ctx.putImageData(img,0,0);
  ctx.fillStyle='rgba(0,0,0,0.78)';
  ctx.fillRect(0,0,160,8);
  ctx.fillStyle='#fff';
  ctx.font='5px system-ui,Segoe UI,Arial,sans-serif';
  ctx.fillText(label,2,6);
}
async function poll(){
  try{
    const r=await fetch('/frame565?'+Date.now(),{cache:'no-store'});
    if(r.ok){
      const frame=Number(r.headers.get('X-Frame-Id') || '-1');
      if(frame!==last){
        last=frame;
        const ageMs=Number(r.headers.get('X-Frame-Age-Ms') || '0');
        const capUs=Number(r.headers.get('X-Capture-Us') || '0');
        const gateUs=Number(r.headers.get('X-Gate-Period-Us') || '0');
        const label=`LIVE f=${frame} age=${ageMs}ms cap=${capUs}us gate=${gateUs}us`;
        drawBytes(new Uint8Array(await r.arrayBuffer()),label);
      }
    }
    const now=Date.now();
    if(now-lastStatsPoll>250){
      lastStatsPoll=now;
      const s=await (await fetch('/stats?'+now,{cache:'no-store'})).json();
      fps.textContent=`host ${s.fps_5s.toFixed(2)}/${s.fps_30s.toFixed(2)} fps  FPGA ${s.fpga_gate_fps.toFixed(2)} fps  USB ${s.serial_kbps.toFixed(0)} kB/s`;
      txt.textContent=JSON.stringify(s,null,2);
    }
  }catch(e){
    txt.textContent=String(e);
  }
  setTimeout(poll,15);
}
poll();
</script>
</body>
</html>
"""


class FrameStore:
    def __init__(self) -> None:
        self.lock = threading.Lock()
        self.frame = b""
        self.frame_id = 0
        self.width = 160
        self.height = 120
        self.capture_us = 0
        self.gate_period_us = 0
        self.wire_format = FORMAT_RGB565_LE
        self.wire_payload_len = 0
        self.frames = 0
        self.bad_headers = 0
        self.bad_packets = 0
        self.bytes_read = 0
        self.byte_times: list[tuple[float, int]] = []
        self.last_rx_time = 0.0
        self.last_status_time = 0.0
        self.status: dict[str, int] = {}
        self.start_time = time.monotonic()
        self.frame_times: list[tuple[float, int]] = []

    @staticmethod
    def _rgb444_to_rgb565(width: int, height: int, payload: bytes) -> bytes:
        out = bytearray(width * height * 2)
        oi = 0
        for i in range(0, len(payload), 3):
            if i + 2 >= len(payload):
                break
            b0, b1, b2 = payload[i], payload[i + 1], payload[i + 2]
            r0, g0, bl0 = (b0 >> 4) & 0x0F, b0 & 0x0F, (b1 >> 4) & 0x0F
            r1, g1, bl1 = b1 & 0x0F, (b2 >> 4) & 0x0F, b2 & 0x0F
            for r4, g4, b4 in ((r0, g0, bl0), (r1, g1, bl1)):
                r5 = (r4 << 1) | (r4 >> 3)
                g6 = (g4 << 2) | (g4 >> 2)
                b5 = (b4 << 1) | (b4 >> 3)
                lo = ((g6 & 0x07) << 5) | b5
                hi = (r5 << 3) | (g6 >> 3)
                out[oi] = hi
                out[oi + 1] = lo
                oi += 2
                if oi >= len(out):
                    break
        return bytes(out)

    @staticmethod
    def _rgb332_to_rgb565(width: int, height: int, payload: bytes) -> bytes:
        out = bytearray(width * height * 2)
        oi = 0
        for v in payload[:width * height]:
            r3 = (v >> 5) & 0x07
            g3 = (v >> 2) & 0x07
            b2 = v & 0x03
            r5 = (r3 << 2) | (r3 >> 1)
            g6 = (g3 << 3) | g3
            b5 = (b2 << 3) | (b2 << 1) | (b2 >> 1)
            lo = ((g6 & 0x07) << 5) | b5
            hi = (r5 << 3) | (g6 >> 3)
            out[oi] = hi
            out[oi + 1] = lo
            oi += 2
        return bytes(out)

    def update(self, frame_id: int, width: int, height: int,
               fmt: int, capture_us: int, gate_period_us: int, payload: bytes) -> None:
        now = time.monotonic()
        if fmt == FORMAT_RGB444_PACKED:
            frame = self._rgb444_to_rgb565(width, height, payload)
        elif fmt == FORMAT_RGB332_PACKED:
            frame = self._rgb332_to_rgb565(width, height, payload)
        else:
            frame = payload
        with self.lock:
            self.frame = frame
            self.frame_id = frame_id
            self.width = width
            self.height = height
            self.wire_format = fmt
            self.wire_payload_len = len(payload)
            self.capture_us = capture_us
            self.gate_period_us = gate_period_us
            self.frames += 1
            self.last_rx_time = now
            self.frame_times.append((now, frame_id))
            cutoff = now - 35.0
            self.frame_times = [(t, f) for (t, f) in self.frame_times if t >= cutoff]

    def mark_bad_header(self) -> None:
        with self.lock:
            self.bad_headers += 1

    def mark_bad_packet(self) -> None:
        with self.lock:
            self.bad_packets += 1

    def add_bytes(self, count: int) -> None:
        now = time.monotonic()
        with self.lock:
            self.bytes_read += count
            self.byte_times.append((now, count))
            cutoff = now - 5.0
            self.byte_times = [(t, c) for (t, c) in self.byte_times if t >= cutoff]

    def update_status(self, values: tuple[int, ...]) -> None:
        now = time.monotonic()
        (_header_len, build, frame_id, complete, partial, sync_count,
         gate_seen, clk_edges_seen, no_clock_abort, first_word,
         capture_us, gate_period_us, gpio_lo, gpio_hi, valid_flags) = values
        valid = valid_flags & 1
        row_resync = valid_flags >> 8
        with self.lock:
            self.last_status_time = now
            self.status = {
                "build": build,
                "frame_id": frame_id,
                "complete": complete,
                "partial": partial,
                "sync_count": sync_count,
                "gate_seen": gate_seen,
                "clk_edges_seen": clk_edges_seen,
                "no_clock_abort": no_clock_abort,
                "first_word": first_word,
                "capture_us": capture_us,
                "gate_period_us": gate_period_us,
                "gpio_lo": gpio_lo,
                "gpio_hi": gpio_hi,
                "valid": valid,
                "row_resync_l16": row_resync,
            }

    def _fps_locked(self, window_s: float) -> float:
        now = time.monotonic()
        pts = [(t, f) for (t, f) in self.frame_times if now - t <= window_s]
        if len(pts) < 2:
            return 0.0
        dt = pts[-1][0] - pts[0][0]
        if dt <= 0:
            return 0.0
        return (pts[-1][1] - pts[0][1]) / dt

    def _kbps_locked(self) -> float:
        now = time.monotonic()
        pts = [(t, c) for (t, c) in self.byte_times if now - t <= 5.0]
        if not pts:
            return 0.0
        dt = max(now - pts[0][0], 0.001)
        return (sum(c for _, c in pts) / 1024.0) / dt

    def snapshot(self) -> dict:
        with self.lock:
            age = time.monotonic() - self.last_rx_time if self.last_rx_time else None
            gpio_lo = int(self.status.get("gpio_lo", 0))
            gpio_hi = int(self.status.get("gpio_hi", 0))
            gpio_sym6 = (
                ((gpio_lo >> 5) & 1) |
                (((gpio_lo >> 6) & 1) << 1) |
                (((gpio_lo >> 7) & 1) << 2) |
                (((gpio_lo >> 8) & 1) << 3) |
                (((gpio_hi >> (47 - 32)) & 1) << 4) |
                (((gpio_hi >> (48 - 32)) & 1) << 5)
            )
            return {
                "valid": bool(self.frame),
                "frame_id": self.frame_id,
                "width": self.width,
                "height": self.height,
                "frames": self.frames,
                "fps_5s": self._fps_locked(5.0),
                "fps_30s": self._fps_locked(30.0),
                "fpga_gate_fps": 1000000.0 / self.gate_period_us if self.gate_period_us else 0.0,
                "serial_kbps": self._kbps_locked(),
                "capture_us": self.capture_us,
                "gate_period_us": self.gate_period_us,
                "serial_bytes": self.bytes_read,
                "bad_headers": self.bad_headers,
                "bad_packets": self.bad_packets,
                "age_s": age,
                "status_age_s": (time.monotonic() - self.last_status_time) if self.last_status_time else None,
                "esp_status": dict(self.status),
                "gpio_gate": (gpio_lo >> 13) & 1,
                "gpio_clk": (gpio_lo >> 21) & 1,
                "gpio_sym6": gpio_sym6,
                "fpga_idle_sdram_state": gpio_sym6 >> 3,
                "fpga_idle_frame_pending": (gpio_sym6 >> 2) & 1,
                "fpga_idle_fifo_nearly_full": (gpio_sym6 >> 1) & 1,
                "fpga_idle_sdram_init_done": gpio_sym6 & 1,
                "payload_bytes": len(self.frame),
                "wire_format": self.wire_format,
                "wire_payload_bytes": self.wire_payload_len,
            }

    def raw(self) -> bytes:
        with self.lock:
            return bytes(self.frame)

    def frame_response(self) -> tuple[bytes, dict[str, str]]:
        with self.lock:
            age = time.monotonic() - self.last_rx_time if self.last_rx_time else 0.0
            headers = {
                "X-Frame-Id": str(self.frame_id),
                "X-Frame-Age-Ms": str(int(age * 1000.0)),
                "X-Width": str(self.width),
                "X-Height": str(self.height),
                "X-Capture-Us": str(self.capture_us),
                "X-Gate-Period-Us": str(self.gate_period_us),
            }
            return bytes(self.frame), headers


def candidate_ports(requested: str) -> list[str]:
    if requested.lower() != "auto":
        return [requested]

    ports = list(list_ports.comports())
    ranked: list[str] = []
    rest: list[str] = []
    for p in ports:
        vid = p.vid if p.vid is not None else -1
        text = " ".join(str(v or "") for v in (
            p.device, p.description, p.manufacturer, p.product, p.serial_number
        )).lower()
        if vid == 0x303A or "aicamera" in text or "tinyusb" in text or "esp" in text:
            ranked.append(p.device)
        else:
            rest.append(p.device)
    return ranked + rest


def parse_stream_buffer(buf: bytearray, store: FrameStore) -> None:
    while True:
        frame_pos = buf.find(FRAME_MAGIC)
        status_pos = buf.find(STATUS_MAGIC)
        positions = [p for p in (frame_pos, status_pos) if p >= 0]
        pos = min(positions) if positions else -1
        if pos < 0:
            if len(buf) > len(FRAME_MAGIC):
                del buf[:-len(FRAME_MAGIC)]
                store.mark_bad_header()
            break
        if pos:
            del buf[:pos]
            store.mark_bad_header()

        if buf.startswith(STATUS_MAGIC):
            if len(buf) < STATUS.size:
                break
            unpacked = STATUS.unpack(buf[:STATUS.size])
            magic = unpacked[0]
            header_len = unpacked[1]
            if magic != STATUS_MAGIC or header_len != STATUS.size:
                del buf[0]
                store.mark_bad_header()
                continue
            store.update_status(unpacked[1:])
            del buf[:STATUS.size]
            continue

        if len(buf) < HEADER.size:
            break

        magic, width, height, fmt, header_len, frame_id, payload_len, capture_us, gate_period_us = HEADER.unpack(buf[:HEADER.size])
        if magic != FRAME_MAGIC or header_len != HEADER.size:
            del buf[0]
            store.mark_bad_header()
            continue
        if fmt == FORMAT_RGB565_LE:
            expected = width * height * 2
        elif fmt == FORMAT_RGB444_PACKED:
            expected = (width * height * 3) // 2
        elif fmt == FORMAT_RGB332_PACKED:
            expected = width * height
        else:
            del buf[0]
            store.mark_bad_packet()
            continue
        if width == 0 or height == 0 or payload_len != expected or payload_len > 512 * 1024:
            del buf[0]
            store.mark_bad_packet()
            continue
        total = header_len + payload_len
        if len(buf) < total:
            break

        payload = bytes(buf[header_len:total])
        del buf[:total]
        store.update(frame_id, width, height, fmt, capture_us, gate_period_us, payload)


def serial_reader(port: str, baud: int, read_size: int, read_timeout: float,
                  store: FrameStore, stop: threading.Event) -> None:
    buf = bytearray()
    while not stop.is_set():
        opened = False
        for dev in candidate_ports(port):
            if stop.is_set():
                break
            try:
                with serial.Serial(dev, baudrate=baud, timeout=read_timeout, write_timeout=0) as ser:
                    opened = True
                    ser.dtr = False
                    ser.rts = False
                    time.sleep(0.25)
                    ser.reset_input_buffer()
                    buf.clear()
                    print(f"Reading AiCamera serial stream on {dev} @ {baud} baud, read={read_size}, timeout={read_timeout}s")
                    while not stop.is_set():
                        chunk = ser.read(read_size)
                        if chunk:
                            buf.extend(chunk)
                            store.add_bytes(len(chunk))
                            parse_stream_buffer(buf, store)
            except (OSError, serial.SerialException) as exc:
                print(f"Serial stream on {dev} closed/unavailable: {exc}", file=sys.stderr)
                time.sleep(0.5)
                continue
        if not opened:
            print("Waiting for AiCamera serial port...", file=sys.stderr)
            time.sleep(1.0)


def make_handler(store: FrameStore):
    class Handler(BaseHTTPRequestHandler):
        def log_message(self, fmt: str, *args) -> None:
            return

        def _send(self, status: int, content_type: str, body: bytes,
                  extra_headers: dict[str, str] | None = None) -> None:
            self.send_response(status)
            self.send_header("Content-Type", content_type)
            self.send_header("Cache-Control", "no-store")
            if extra_headers:
                for key, value in extra_headers.items():
                    self.send_header(key, value)
            self.send_header("Content-Length", str(len(body)))
            self.end_headers()
            self.wfile.write(body)

        def do_GET(self) -> None:
            path = urlparse(self.path).path
            if path == "/":
                self._send(200, "text/html; charset=utf-8", HTML.encode("utf-8"))
            elif path == "/stats":
                self._send(200, "application/json", json.dumps(store.snapshot()).encode("utf-8"))
            elif path == "/raw565":
                raw = store.raw()
                if raw:
                    self._send(200, "application/octet-stream", raw)
                else:
                    self._send(503, "text/plain; charset=utf-8", b"no frame yet")
            elif path == "/frame565":
                raw, headers = store.frame_response()
                if raw:
                    self._send(200, "application/octet-stream", raw, headers)
                else:
                    self._send(503, "text/plain; charset=utf-8", b"no frame yet")
            else:
                self._send(404, "text/plain; charset=utf-8", b"not found")

    return Handler


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--port", default="auto", help="ESP32 serial port, or auto to scan ports")
    ap.add_argument("--baud", type=int, default=2_000_000, help="serial baud, default 2000000")
    ap.add_argument("--read-size", type=int, default=DEFAULT_READ_SIZE,
                    help=f"pyserial read chunk, default {DEFAULT_READ_SIZE}")
    ap.add_argument("--read-timeout", type=float, default=DEFAULT_READ_TIMEOUT,
                    help=f"pyserial read timeout seconds, default {DEFAULT_READ_TIMEOUT}")
    ap.add_argument("--host", default="127.0.0.1")
    ap.add_argument("--http-port", type=int, default=8000)
    args = ap.parse_args()

    store = FrameStore()
    stop = threading.Event()
    reader = threading.Thread(
        target=serial_reader,
        args=(args.port, args.baud, args.read_size, args.read_timeout, store, stop),
        daemon=True,
    )
    reader.start()

    httpd = ThreadingHTTPServer((args.host, args.http_port), make_handler(store))
    print(f"Open http://{args.host}:{args.http_port}/")
    try:
        httpd.serve_forever()
    except KeyboardInterrupt:
        pass
    finally:
        stop.set()
        httpd.shutdown()
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
