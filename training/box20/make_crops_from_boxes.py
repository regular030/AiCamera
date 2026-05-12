#!/usr/bin/env python3
"""Build 20x20 positive/negative crop folders from labeled preview frames."""

from __future__ import annotations

import argparse
import csv
import random
from dataclasses import dataclass
from pathlib import Path

from PIL import Image

IMAGE_EXTS = {".png", ".jpg", ".jpeg", ".bmp"}


@dataclass(frozen=True)
class Box:
    image: str
    x1: int
    y1: int
    x2: int
    y2: int
    label: str


def parse_args() -> argparse.Namespace:
    ap = argparse.ArgumentParser()
    ap.add_argument("--frames", type=Path, required=True)
    ap.add_argument("--annotations", type=Path, required=True)
    ap.add_argument("--out", type=Path, required=True)
    ap.add_argument("--box-size", type=int, default=20)
    ap.add_argument("--positives-per-box", type=int, default=8)
    ap.add_argument("--negatives-per-image", type=int, default=24)
    ap.add_argument("--negative-iou-max", type=float, default=0.05)
    ap.add_argument(
        "--grid-aligned",
        action="store_true",
        help="Build crops from the same fixed 20x20 tile grid used by the FPGA detector.",
    )
    ap.add_argument(
        "--only-annotated-images",
        action="store_true",
        help="Ignore unlabeled frames; useful when unlabeled captures may still contain the object.",
    )
    ap.add_argument(
        "--negative-frames",
        type=Path,
        action="append",
        default=[],
        help="Folder of explicit no-object frames to use as negatives. May be passed more than once.",
    )
    ap.add_argument(
        "--positive-overlap-min",
        type=float,
        default=0.25,
        help="For --grid-aligned, mark a tile positive when this fraction of the tile overlaps a label box.",
    )
    ap.add_argument(
        "--label-scale",
        type=float,
        default=1.0,
        help="Scale used for labeled PNGs, e.g. 2 if boxes were drawn on 160x120 captures.",
    )
    ap.add_argument("--seed", type=int, default=1)
    return ap.parse_args()


def scaled_coord(value: str, scale: float) -> int:
    return int(round(float(value) / scale))


def read_boxes(path: Path, scale: float) -> list[Box]:
    boxes: list[Box] = []
    with path.open("r", newline="") as f:
        reader = csv.DictReader(f)
        for row in reader:
            x1 = scaled_coord(row["x1"], scale)
            y1 = scaled_coord(row["y1"], scale)
            x2 = scaled_coord(row["x2"], scale)
            y2 = scaled_coord(row["y2"], scale)
            x1, x2 = min(x1, x2), max(x1, x2)
            y1, y2 = min(y1, y2), max(y1, y2)
            boxes.append(
                Box(
                    image=row["image"],
                    x1=x1,
                    y1=y1,
                    x2=max(x2, x1 + 1),
                    y2=max(y2, y1 + 1),
                    label=row.get("label", "object"),
                )
            )
    return boxes


def list_frame_names(frames_dir: Path) -> list[str]:
    names: list[str] = []
    for path in frames_dir.rglob("*"):
        if path.is_file() and path.suffix.lower() in IMAGE_EXTS:
            names.append(path.relative_to(frames_dir).as_posix())
    return names


def clamp_crop_xy(cx: int, cy: int, size: int, w: int, h: int) -> tuple[int, int]:
    x = max(0, min(w - size, cx - size // 2))
    y = max(0, min(h - size, cy - size // 2))
    return x, y


def iou(a: tuple[int, int, int, int], b: Box) -> float:
    ax1, ay1, ax2, ay2 = a
    ix1 = max(ax1, b.x1)
    iy1 = max(ay1, b.y1)
    ix2 = min(ax2, b.x2)
    iy2 = min(ay2, b.y2)
    iw = max(0, ix2 - ix1)
    ih = max(0, iy2 - iy1)
    inter = iw * ih
    if inter == 0:
        return 0.0
    area_a = max(1, (ax2 - ax1) * (ay2 - ay1))
    area_b = max(1, (b.x2 - b.x1) * (b.y2 - b.y1))
    return inter / float(area_a + area_b - inter)


def overlap_fraction(a: tuple[int, int, int, int], b: Box) -> float:
    ax1, ay1, ax2, ay2 = a
    ix1 = max(ax1, b.x1)
    iy1 = max(ay1, b.y1)
    ix2 = min(ax2, b.x2)
    iy2 = min(ay2, b.y2)
    iw = max(0, ix2 - ix1)
    ih = max(0, iy2 - iy1)
    inter = iw * ih
    area_a = max(1, (ax2 - ax1) * (ay2 - ay1))
    return inter / float(area_a)


def save_crop(img: Image.Image, x: int, y: int, size: int, path: Path) -> None:
    crop = img.crop((x, y, x + size, y + size)).convert("RGB")
    crop.save(path)


def open_scaled_image(path: Path, scale: float) -> Image.Image:
    img = Image.open(path).convert("RGB")
    if scale != 1.0:
        scaled_w = max(1, int(round(img.width / scale)))
        scaled_h = max(1, int(round(img.height / scale)))
        img = img.resize((scaled_w, scaled_h), Image.Resampling.NEAREST)
    return img


def write_negative_crops(
    img: Image.Image,
    stem: str,
    neg_dir: Path,
    box_size: int,
    negatives_per_image: int,
    grid_aligned: bool,
) -> int:
    w, h = img.size
    if w < box_size or h < box_size:
        return 0

    candidates: list[tuple[int, int]] = []
    if grid_aligned:
        for y in range(0, h - box_size + 1, box_size):
            for x in range(0, w - box_size + 1, box_size):
                candidates.append((x, y))
    else:
        for _ in range(max(0, negatives_per_image) * 100):
            candidates.append((random.randint(0, w - box_size), random.randint(0, h - box_size)))

    if negatives_per_image <= 0:
        chosen = candidates
    else:
        chosen = random.sample(candidates, min(negatives_per_image, len(candidates)))

    for made, (x, y) in enumerate(chosen):
        out = neg_dir / f"{stem}_explicit_neg{made:03d}.png"
        save_crop(img, x, y, box_size, out)
    return len(chosen)


def main() -> None:
    args = parse_args()
    if args.label_scale <= 0:
        raise ValueError("--label-scale must be greater than zero")
    if args.positive_overlap_min < 0.0 or args.positive_overlap_min > 1.0:
        raise ValueError("--positive-overlap-min must be between 0 and 1")

    random.seed(args.seed)

    pos_dir = args.out / "pos"
    neg_dir = args.out / "neg"
    pos_dir.mkdir(parents=True, exist_ok=True)
    neg_dir.mkdir(parents=True, exist_ok=True)

    boxes = read_boxes(args.annotations, args.label_scale)
    by_image: dict[str, list[Box]] = {}
    for box in boxes:
        by_image.setdefault(box.image, []).append(box)

    if args.only_annotated_images:
        image_names = sorted(by_image.keys())
    else:
        image_names = sorted(set(list_frame_names(args.frames)) | set(by_image.keys()))
    pos_count = 0
    neg_count = 0

    for image_name in image_names:
        image_boxes = by_image.get(image_name, [])
        img_path = args.frames / image_name
        if not img_path.exists():
            print(f"missing frame: {img_path}")
            continue

        img = open_scaled_image(img_path, args.label_scale)

        w, h = img.size
        if w < args.box_size or h < args.box_size:
            print(f"skip too-small frame: {img_path}")
            continue

        if args.grid_aligned:
            neg_tiles: list[tuple[int, int]] = []
            for y in range(0, h - args.box_size + 1, args.box_size):
                for x in range(0, w - args.box_size + 1, args.box_size):
                    crop_box = (x, y, x + args.box_size, y + args.box_size)
                    is_pos = any(
                        overlap_fraction(crop_box, b) >= args.positive_overlap_min
                        for b in image_boxes
                    )
                    if is_pos:
                        out = pos_dir / f"{Path(image_name).stem}_grid_x{x:03d}_y{y:03d}.png"
                        save_crop(img, x, y, args.box_size, out)
                        pos_count += 1
                    else:
                        neg_tiles.append((x, y))

            if args.negatives_per_image <= 0:
                chosen_neg = neg_tiles
            else:
                chosen_neg = random.sample(neg_tiles, min(args.negatives_per_image, len(neg_tiles)))
            for made, (x, y) in enumerate(chosen_neg):
                out = neg_dir / f"{Path(image_name).stem}_grid_neg{made:03d}_x{x:03d}_y{y:03d}.png"
                save_crop(img, x, y, args.box_size, out)
                neg_count += 1
            continue

        for box_idx, box in enumerate(image_boxes):
            cx = (box.x1 + box.x2) // 2
            cy = (box.y1 + box.y2) // 2
            for j in range(args.positives_per_box):
                jitter = args.box_size // 4
                jx = random.randint(-jitter, jitter)
                jy = random.randint(-jitter, jitter)
                x, y = clamp_crop_xy(cx + jx, cy + jy, args.box_size, w, h)
                out = pos_dir / f"{Path(image_name).stem}_b{box_idx:02d}_{j:02d}.png"
                save_crop(img, x, y, args.box_size, out)
                pos_count += 1

        attempts = 0
        made = 0
        while made < args.negatives_per_image and attempts < args.negatives_per_image * 100:
            attempts += 1
            x = random.randint(0, w - args.box_size)
            y = random.randint(0, h - args.box_size)
            crop_box = (x, y, x + args.box_size, y + args.box_size)
            if any(iou(crop_box, b) > args.negative_iou_max for b in image_boxes):
                continue
            out = neg_dir / f"{Path(image_name).stem}_neg{made:03d}.png"
            save_crop(img, x, y, args.box_size, out)
            made += 1
            neg_count += 1

    for neg_root in args.negative_frames:
        neg_root = neg_root.resolve()
        if not neg_root.is_dir():
            print(f"missing negative frame folder: {neg_root}")
            continue
        for img_path in sorted(p for p in neg_root.rglob("*") if p.is_file() and p.suffix.lower() in IMAGE_EXTS):
            rel_stem = img_path.relative_to(neg_root).with_suffix("").as_posix().replace("/", "_")
            img = open_scaled_image(img_path, args.label_scale)
            made = write_negative_crops(
                img,
                rel_stem,
                neg_dir,
                args.box_size,
                args.negatives_per_image,
                args.grid_aligned,
            )
            neg_count += made

    print(f"wrote {pos_count} positive crops to {pos_dir}")
    print(f"wrote {neg_count} negative crops to {neg_dir}")


if __name__ == "__main__":
    main()
