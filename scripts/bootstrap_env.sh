#!/bin/bash
# Install Node and Playwright CLI
brew install node || exit 1
npm install playwright || exit 1
npx playwright install || exit 1
npx playwright --version
