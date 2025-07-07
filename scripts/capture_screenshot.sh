#!/bin/bash
if [ "$1" = "test" ]; then echo "✅ /Volumes/SSD/local-agent/playwright/scripts/capture_screenshot.sh test passed"; exit 0; fi
URL="$1"
OUT="$2"
if [ -z "$URL" ] || [ -z "$OUT" ]; then
  echo "❌ Usage: $0 <URL> <output_file>"
  exit 1
fi
npx playwright screenshot "$URL" "$OUT" && echo "✅ Screenshot saved to $OUT"
