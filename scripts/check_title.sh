#!/bin/bash
# Print the page title for a given URL using Playwright
URL="$1"
if [ -z "$URL" ]; then
  echo "Usage: $0 <url>" >&2
  exit 1
fi
node <<'NODE'
const { chromium } = require('playwright');
(async () => {
  const browser = await chromium.launch();
  const page = await browser.newPage();
  await page.goto(process.argv[2]);
  const title = await page.title();
  console.log(`Title: ${title}`);
  await browser.close();
})();
NODE
"$URL"
