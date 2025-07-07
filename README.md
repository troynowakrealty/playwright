# Playwright – Local Agent Tool

Headless browser scripting using Playwright via CLI.

## Setup:
```bash
bash scripts/bootstrap_env.sh
```

## Usage:
```bash
bash scripts/capture_screenshot.sh https://example.com out.png
bash scripts/check_title.sh https://example.com
```

## Repository Structure:
- `scripts/`: CLI actions
- `tool_map.json`: maps commands to scripts
- `AGENTS.md`: agent instructions
- `cli_reference.md`: command details
- `.github/`: test workflows
