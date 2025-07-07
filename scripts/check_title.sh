#!/usr/bin/env bash
# Print the page title for a given URL using Playwright
set -euo pipefail

if [ "$#" -ne 1 ]; then
  echo "❌ Invalid input: URL required" >&2
  exit 1
fi

URL="$1"

node - "$URL" <<'NODE'
const { chromium } = require('playwright');
(async () => {
  const url = process.argv[1];
  try {
    const browser = await chromium.launch();
    const page = await browser.newPage();
    await page.goto(url);
    const title = await page.title();
    await browser.close();
    console.log(`✅ Title: ${title}`);
  } catch (e) {
    console.error('❌ Failed to load page');
    process.exit(1);
  }
})();
NODE

