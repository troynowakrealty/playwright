#!/bin/bash
if [ "$1" = "test" ]; then echo "✅ /Volumes/SSD/local-agent/playwright/scripts/example.sh test passed"; exit 0; fi
echo Hello from ${1:-} tool
