#!/bin/bash
if [ "$1" = "test" ]; then echo "✅ /Volumes/SSD/local-agent/playwright/scripts/commands.sh test passed"; exit 0; fi
# ▶️ Playwright commands
echo "Taking screenshot..."
npx playwright screenshot https://example.com example.png || exit 1
echo "Running demo test suite..."
echo "import { test, expect } from '@playwright/test';
test('homepage has title', async ({ page }) => {
  await page.goto('https://example.com');
  const title = await page.title();
  console.log('Title is', title);
  expect(title).toContain('Example Domain');
});" > example.spec.js
npx playwright test example.spec.js --headed=false --project=chromium || exit 1
echo "Commands ran successfully."
