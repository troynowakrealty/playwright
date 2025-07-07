#!/usr/bin/env bash
# Capture a screenshot of a webpage using Playwright
set -euo pipefail

if [ "$#" -ne 2 ]; then
  echo "❌ Invalid input: URL and output file required" >&2
  exit 1
fi

URL="$1"
OUT="$2"

if ! npx playwright screenshot "$URL" "$OUT"; then
  echo "❌ Failed to capture screenshot" >&2
  exit 1
fi

echo "✅ Screenshot saved to $OUT"

