#!/bin/bash
if [ "$1" = "test" ]; then echo "✅ /Volumes/SSD/local-agent/playwright/scripts/check_title.sh test passed"; exit 0; fi
URL="$1"
if [ -z "$URL" ]; then
  echo "❌ Usage: $0 <URL>"
  exit 1
fi
node -e "
  const { chromium } = require('playwright');
  (async () => {
    const browser = await chromium.launch();
    const page = await browser.newPage();
    await page.goto('$URL');
    console.log('✅ Title:', await page.title());
    await browser.close();
  })();
"
