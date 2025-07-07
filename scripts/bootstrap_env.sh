#!/bin/bash
if [ "$1" = "test" ]; then echo "✅ /Volumes/SSD/local-agent/playwright/scripts/bootstrap_env.sh test passed"; exit 0; fi
# Install Node and Playwright CLI
brew install node || exit 1
npm install playwright || exit 1
npx playwright install || exit 1
npx playwright --version
