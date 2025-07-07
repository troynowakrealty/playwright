#!/bin/bash
# Capture screenshot of a given URL using Playwright CLI
URL="$1"
OUTPUT="$2"
if [ -z "$URL" ] || [ -z "$OUTPUT" ]; then
  echo "Usage: $0 <url> <output.png>" >&2
  exit 1
fi
npx playwright screenshot "$URL" "$OUTPUT"
if [ -f "$OUTPUT" ]; then
  echo "Screenshot saved to $OUTPUT"
else
  echo "Failed to capture screenshot" >&2
  exit 1
fi
