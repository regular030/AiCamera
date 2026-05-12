#!/usr/bin/env python3
"""Scan preview frames with a trained 20x20 RGB crop classifier."""

from __future__ import annotations

import argparse
import csv
from pathlib import Path

import numpy as np
from PIL import Image, ImageDraw

import torch

from train_box20 import TinyBox20


IMAGE_EXTS = {".png", ".jpg", ".jpeg", ".bmp"}


def parse_args() -> argparse.Namespace:
    ap = argparse.ArgumentParser()
    ap.add_argument("--model", type=Path, required=True, help="Path to model_float.pt")
    ap.add_argument("--frames", type=Path, required=True)
    ap.add_argument("--out", type=Path, required=True)
    ap.add_argument("--box-size", type=int, default=20)
    ap.add_argument("--stride", type=int, default=20)
    ap.add_argument("--threshold", type=float, default=160.0)
    ap.add_argument(
        "--source-scale",
        type=float,
        default=1.0,
        help="Use 2 when scanning PNGs captured with capture_esp32_frames.py --scale 2.",
    )
    ap.add_argument("--max-frames", type=int, default=None)
    return ap.parse_args()


def list_images(root: Path) -> list[Path]:
    return sorted(p for p in root.rglob("*") if p.is_file() and p.suffix.lower() in IMAGE_EXTS)


def load_model(path: Path, device: torch.device) -> TinyBox20:
    state = torch.load(path, map_location=device)
    channels = int(state["conv.weight"].shape[0])
    model = TinyBox20(channels=channels).to(device)
    model.load_state_dict(state)
    model.eval()
    return model


def prepare_image(path: Path, source_scale: float) -> Image.Image:
    img = Image.open(path).convert("RGB")
    if source_scale != 1.0:
        w = max(1, int(round(img.width / source_scale)))
        h = max(1, int(round(img.height / source_scale)))
        img = img.resize((w, h), Image.Resampling.NEAREST)
    return img


def crop_tensor(img: Image.Image, x: int, y: int, size: int) -> torch.Tensor:
    crop = img.crop((x, y, x + size, y + size)).resize((20, 20), Image.Resampling.BILINEAR)
    arr = np.asarray(crop, dtype=np.float32)
    return torch.from_numpy(np.ascontiguousarray(arr)).permute(2, 0, 1)


@torch.no_grad()
def scan_image(
    model: TinyBox20,
    img: Image.Image,
    box_size: int,
    stride: int,
    device: torch.device,
) -> list[tuple[int, int, float]]:
    windows: list[tuple[int, int]] = []
    tensors: list[torch.Tensor] = []
    for y in range(0, img.height - box_size + 1, stride):
        for x in range(0, img.width - box_size + 1, stride):
            windows.append((x, y))
            tensors.append(crop_tensor(img, x, y, box_size))

    if not tensors:
        return []

    batch = torch.stack(tensors).to(device)
    scores = torch.clamp(model(batch).flatten(), 0.0, 255.0).cpu().tolist()
    return [(x, y, float(score)) for (x, y), score in zip(windows, scores)]


def draw_overlay(
    img: Image.Image,
    hits: list[tuple[int, int, float]],
    box_size: int,
    threshold: float,
) -> Image.Image:
    out = img.copy()
    draw = ImageDraw.Draw(out)
    for x, y, score in hits:
        if score < threshold:
            continue
        color = (255, 136, 0)
        draw.rectangle((x, y, x + box_size - 1, y + box_size - 1), outline=color, width=2)
        draw.text((x + 1, y + 1), f"{score:.0f}", fill=color)
    return out


def main() -> None:
    args = parse_args()
    if args.box_size < 1 or args.stride < 1:
        raise ValueError("--box-size and --stride must be positive")
    if args.source_scale <= 0:
        raise ValueError("--source-scale must be positive")

    args.out.mkdir(parents=True, exist_ok=True)
    overlay_dir = args.out / "overlays"
    overlay_dir.mkdir(parents=True, exist_ok=True)
    csv_path = args.out / "scores.csv"

    device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
    model = load_model(args.model, device)
    images = list_images(args.frames)
    if args.max_frames is not None:
        images = images[: args.max_frames]

    with csv_path.open("w", newline="") as f:
        writer = csv.writer(f)
        writer.writerow(["image", "x", "y", "score", "hit"])
        for path in images:
            img = prepare_image(path, args.source_scale)
            hits = scan_image(model, img, args.box_size, args.stride, device)
            for x, y, score in hits:
                writer.writerow([path.relative_to(args.frames).as_posix(), x, y, f"{score:.3f}", int(score >= args.threshold)])

            overlay = draw_overlay(img, hits, args.box_size, args.threshold)
            overlay.save(overlay_dir / path.with_suffix(".png").name)
            best = max((score for _, _, score in hits), default=0.0)
            print(f"{path}: best={best:.1f}")

    print(f"wrote scores to {csv_path}")
    print(f"wrote overlays to {overlay_dir}")


if __name__ == "__main__":
    main()
