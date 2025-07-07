#!/usr/bin/env bash
# Bootstrap environment for Playwright CLI
set -euo pipefail

echo "Installing Node.js and Playwright..."

# Install Node.js if missing
if ! command -v node >/dev/null 2>&1; then
  if command -v brew >/dev/null 2>&1; then
    brew install node || { echo "❌ Failed to install Node.js" >&2; exit 1; }
  elif command -v apt-get >/dev/null 2>&1; then
    sudo apt-get update && sudo apt-get install -y nodejs npm || {
      echo "❌ Failed to install Node.js" >&2; exit 1;
    }
  else
    echo "❌ Node.js not found and no package manager available" >&2
    exit 1
  fi
fi

# Install Playwright globally
npm install --location=global playwright || { echo "❌ Failed to install Playwright" >&2; exit 1; }

# Install required browser binaries
npx playwright install --with-deps || { echo "❌ Failed to install browsers" >&2; exit 1; }

# Print versions
echo "Node version: $(node --version)"
echo "Playwright version: $(npx playwright --version)"
echo "✅ Environment setup complete"
