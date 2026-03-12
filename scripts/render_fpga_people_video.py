#!/usr/bin/env python3
import argparse
import json
import cv2

def load_jsonl(path):
    by_frame = {}
    with open(path, "r", encoding="utf-8") as f:
        for line in f:
            line = line.strip()
            if not line:
                continue
            item = json.loads(line)
            by_frame[item["frame"]] = item
    return by_frame

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--video", required=True)
    ap.add_argument("--jsonl", required=True)
    ap.add_argument("--output", required=True)
    args = ap.parse_args()

    dets = load_jsonl(args.jsonl)
    cap = cv2.VideoCapture(args.video)
    if not cap.isOpened():
        raise SystemExit("could not open input video")

    w = int(cap.get(cv2.CAP_PROP_FRAME_WIDTH))
    h = int(cap.get(cv2.CAP_PROP_FRAME_HEIGHT))
    fps = cap.get(cv2.CAP_PROP_FPS) or 30.0

    fourcc = cv2.VideoWriter_fourcc(*"mp4v")
    out = cv2.VideoWriter(args.output, fourcc, fps, (w, h))

    frame_idx = 0
    while True:
        ok, frame = cap.read()
        if not ok:
            break

        item = dets.get(frame_idx)
        if item:
            total = item.get("total_people", 0)
            cv2.putText(frame, f"Total people: {total}", (20, 30),
                        cv2.FONT_HERSHEY_SIMPLEX, 0.9, (0, 255, 0), 2, cv2.LINE_AA)

            for det in item.get("detections", []):
                x1 = int(det["x1"]); y1 = int(det["y1"])
                x2 = int(det["x2"]); y2 = int(det["y2"])
                label = det.get("label", "obj")
                score = det.get("score", 0.0)
                track_id = det.get("track_id", 0)

                cv2.rectangle(frame, (x1, y1), (x2, y2), (0, 255, 0), 2)
                txt = f"{label} id={track_id} score={score:.2f}"
                cv2.putText(frame, txt, (x1, max(20, y1 - 8)),
                            cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 255, 0), 1, cv2.LINE_AA)

        out.write(frame)
        frame_idx += 1

    cap.release()
    out.release()

if __name__ == "__main__":
    main()
