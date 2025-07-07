# Playwright – Local Agent Tool

Headless browser scripting using Playwright via CLI.

## Setup
```bash
bash scripts/bootstrap_env.sh
```

## Usage
The repository provides several helper CLI scripts:

- `scripts/capture_screenshot.sh <url> <output.png>` – capture a screenshot of a page.
- `scripts/check_title.sh <url>` – print the page title.
- `scripts/run_with_retry.sh '{"tool":"<script>","args":"<args>"}'` – run another script with retry logic.
- `scripts/screenshot_and_extract_text.sh '{"url":"<url>"}'` – screenshot a page and OCR the text.
- `scripts/run_playwright_script.sh '{"script":"<path>"}'` – execute a Playwright test file.

## Repository Structure
- `scripts/`: CLI actions
- `tool_map.json`: maps commands to scripts
- `AGENTS.md`: agent instructions
- `.github/`: test workflows
