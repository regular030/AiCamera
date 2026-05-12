#!/usr/bin/env python3
"""Download RGB preview frames from the ESP32 AiCamera webpage."""

from __future__ import annotations

import argparse
import csv
import json
import time
import urllib.request
from datetime import datetime
from pathlib import Path

from PIL import Image


def fetch_bytes(url: str, timeout: float = 5.0) -> bytes:
    with urllib.request.urlopen(url, timeout=timeout) as resp:
        return resp.read()


def fetch_json(url: str, timeout: float = 5.0) -> dict:
    return json.loads(fetch_bytes(url, timeout=timeout).decode("utf-8"))


def fetch_stats(base_url: str, timeout: float = 5.0) -> dict | None:
    try:
        return fetch_json(f"{base_url.rstrip('/')}/stats", timeout=timeout)
    except Exception:
        return None


DEFAULT_WIDTH = 160
DEFAULT_HEIGHT = 120


def rgb565le_to_image(raw: bytes, width: int = DEFAULT_WIDTH, height: int = DEFAULT_HEIGHT) -> Image.Image:
    if len(raw) != width * height * 2:
        raise ValueError(f"expected {width * height * 2} raw bytes, got {len(raw)}")

    out = bytearray(width * height * 3)
    oi = 0
    for i in range(0, len(raw), 2):
        word = raw[i] | (raw[i + 1] << 8)
        hi = word & 0xFF
        lo = (word >> 8) & 0xFF

        r5 = hi >> 3
        g6 = ((hi & 0x07) << 3) | (lo >> 5)
        b5 = lo & 0x1F

        out[oi] = (r5 << 3) | (r5 >> 2)
        out[oi + 1] = (g6 << 2) | (g6 >> 4)
        out[oi + 2] = (b5 << 3) | (b5 >> 2)
        oi += 3

    return Image.frombytes("RGB", (width, height), bytes(out))


def current_frame_number(stats: dict | None) -> int | None:
    """Return the ESP frame counter from either old or current stats JSON."""

    if not stats:
        return None
    for key in ("frame", "frame_id"):
        if key in stats:
            try:
                return int(stats[key])
            except (TypeError, ValueError):
                return None
    return None


def current_raw_size(stats: dict | None, fallback_width: int, fallback_height: int) -> tuple[int, int]:
    """Infer raw frame size from stats when possible, otherwise use CLI defaults."""

    if stats:
        wire = str(stats.get("wire", ""))
        bmp = str(stats.get("bmp", ""))
        size_text = wire if "x" in wire else bmp
        if "160x120" in size_text:
            return 160, 120
        if "80x60" in size_text:
            return 80, 60
    return fallback_width, fallback_height


def raw_size_from_length(raw: bytes) -> tuple[int, int] | None:
    sizes = {
        80 * 60 * 2: (80, 60),
        160 * 120 * 2: (160, 120),
        320 * 240 * 2: (320, 240),
    }
    return sizes.get(len(raw))


def download_frame(
    base_url: str = "http://172.17.35.240",
    out_path: str | Path = "frame.png",
    scale: int = 1,
    timeout: float = 5.0,
    width: int = DEFAULT_WIDTH,
    height: int = DEFAULT_HEIGHT,
    stats: dict | None = None,
) -> int | None:
    """Download one ESP32 /raw565 preview frame and save it as a PNG.

    Returns the ESP32 frame counter if /stats was reachable, otherwise None.
    """

    base = base_url.rstrip("/")
    if stats is None:
        stats = fetch_stats(base, timeout)

    frame_id = current_frame_number(stats)
    width, height = current_raw_size(stats, width, height)
    raw = fetch_bytes(f"{base}/raw565?t={time.time_ns()}", timeout=timeout)
    raw_size = raw_size_from_length(raw)
    if raw_size is not None:
        width, height = raw_size
    img = rgb565le_to_image(raw, width=width, height=height)
    if scale != 1:
        img = img.resize((img.width * scale, img.height * scale), Image.Resampling.NEAREST)

    out = Path(out_path)
    out.parent.mkdir(parents=True, exist_ok=True)
    img.save(out)
    return frame_id


def parse_args() -> argparse.Namespace:
    ap = argparse.ArgumentParser()
    ap.add_argument("--base-url", default="http://172.17.35.240")
    ap.add_argument("--out", type=Path, default=Path("data/frames"))
    ap.add_argument("--count", type=int, default=None)
    ap.add_argument("--duration", type=float, default=None, help="Record for this many seconds.")
    ap.add_argument("--interval", type=float, default=1.0)
    ap.add_argument("--scale", type=int, default=1, choices=(1, 2, 4, 8))
    ap.add_argument("--width", type=int, default=DEFAULT_WIDTH)
    ap.add_argument("--height", type=int, default=DEFAULT_HEIGHT)
    ap.add_argument("--prefix", default="frame")
    ap.add_argument("--timeout", type=float, default=5.0)
    ap.add_argument("--allow-duplicates", action="store_true")
    ap.add_argument("--no-manifest", action="store_true")
    return ap.parse_args()


def should_continue(saved: int, count: int | None, deadline: float | None) -> bool:
    if count is not None and saved >= count:
        return False
    if deadline is not None and time.monotonic() >= deadline:
        return False
    return True


def main() -> None:
    args = parse_args()
    if args.count is None and args.duration is None:
        args.count = 1
    if args.count is not None and args.count < 1:
        raise ValueError("--count must be at least 1")
    if args.duration is not None and args.duration <= 0:
        raise ValueError("--duration must be greater than zero")
    if args.interval < 0:
        raise ValueError("--interval cannot be negative")
    if args.width < 1 or args.height < 1:
        raise ValueError("--width and --height must be positive")

    args.out.mkdir(parents=True, exist_ok=True)
    deadline = time.monotonic() + args.duration if args.duration is not None else None
    manifest_path = args.out / "manifest.csv"
    manifest_new = not manifest_path.exists()
    seen_ids: set[int] = set()
    saved = 0

    manifest_file = None
    manifest_writer = None
    if not args.no_manifest:
        manifest_file = manifest_path.open("a", newline="")
        manifest_writer = csv.writer(manifest_file)
        if manifest_new:
            manifest_writer.writerow(["index", "frame", "timestamp", "elapsed_s", "width", "height", "path"])

    start = time.monotonic()
    try:
        while should_continue(saved, args.count, deadline):
            try:
                stats = fetch_stats(args.base_url, timeout=args.timeout)
                frame_id = current_frame_number(stats)
                width, height = current_raw_size(stats, args.width, args.height)
                if frame_id is not None and not args.allow_duplicates and frame_id in seen_ids:
                    time.sleep(min(args.interval, 0.25))
                    continue

                stamp = datetime.now().strftime("%Y%m%d_%H%M%S_%f")[:-3]
                frame_name = f"{frame_id:06d}" if frame_id is not None else "unknown"
                out_path = args.out / f"{args.prefix}_{frame_name}_{stamp}.png"
                got_id = download_frame(
                    args.base_url,
                    out_path,
                    args.scale,
                    args.timeout,
                    width=width,
                    height=height,
                    stats=stats,
                )
                if got_id is not None:
                    seen_ids.add(got_id)
                elapsed = time.monotonic() - start
                saved += 1
                if manifest_writer:
                    manifest_writer.writerow([saved, got_id, stamp, f"{elapsed:.3f}", width, height, out_path.as_posix()])
                    manifest_file.flush()
                print(f"saved {out_path}")
            except Exception as exc:
                print(f"capture failed: {exc}")

            if should_continue(saved, args.count, deadline):
                time.sleep(args.interval)
    finally:
        if manifest_file:
            manifest_file.close()

    print(f"recorded {saved} frame(s) to {args.out}")


if __name__ == "__main__":
    main()
