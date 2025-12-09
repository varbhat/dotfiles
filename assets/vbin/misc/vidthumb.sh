#!/usr/bin/env bash
# vidthumb.sh — generate and cache video thumbnail, output to stdout (binary image)

set -euo pipefail

video="${1:-}"

if [[ -z "$video" || ! -f "$video" ]]; then
    echo "Usage: $0 <video-file>" >&2
    exit 1
fi

cache="$HOME/.cache/vidthumb"
index="$cache/index.json"
mkdir -p "$cache"

# Normalize the movie path
movie="$(realpath "$video")"

# Check cache
if [[ -f "$index" ]]; then
    thumb_file="$(jq -r --arg movie "$movie" '.[$movie]' "$index" 2>/dev/null || echo null)"
    if [[ "$thumb_file" != "null" && -f "$cache/$thumb_file" ]]; then
        cat "$cache/$thumb_file"
        exit 0
    fi
fi

# Generate new thumbnail filename
thumbnail="$(uuidgen).jpg"
output="$cache/$thumbnail"

# Try ffmpegthumbnailer first, fallback to ffmpeg
if ! command -v ffmpegthumbnailer >/dev/null 2>&1 || \
   ! ffmpegthumbnailer -i "$movie" -o "$output" -s 0 -t 10 2>/dev/null; then
    duration=$(ffprobe -v error -show_entries format=duration \
        -of default=noprint_wrappers=1:nokey=1 "$movie" 2>/dev/null || echo 0)
    seek=$(awk -v d="$duration" 'BEGIN { print (d > 0 ? d * 0.1 : 1) }')
    ffmpeg -y -ss "$seek" -i "$movie" -vframes 1 -vf scale=-2:480 "$output" -loglevel error || exit 1
fi

# Verify thumbnail exists
[[ -f "$output" ]] || { echo "Thumbnail generation failed" >&2; exit 1; }

# Atomically update cache index
tmp_index="$(mktemp)"
if [[ -f "$index" ]]; then
    jq --arg movie "$movie" --arg thumb "$thumbnail" '. + {($movie): $thumb}' "$index" >"$tmp_index"
else
    jq -n --arg movie "$movie" --arg thumb "$thumbnail" '{($movie): $thumb}' >"$tmp_index"
fi
mv "$tmp_index" "$index"

notify-send "$output"
# Output thumbnail image to stdout
cat "$output"
