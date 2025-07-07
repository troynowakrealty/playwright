#!/bin/bash
INPUT="$1"
URL=$(jq -r '.url' <<< "$INPUT")
OUT="/tmp/screenshot.png"
TEXT="/tmp/page_text.txt"
playwright screenshot "$URL" "$OUT"
tesseract "$OUT" "$TEXT"
cat "$TEXT"
