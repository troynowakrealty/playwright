# Agent Setup – Playwright CLI Tool

## To Initialize:
Run \`scripts/bootstrap_env.sh\` to install Node + Playwright CLI + browser engines.

## Supported Commands:
- \`take screenshot\`: Run \`scripts/capture_screenshot.sh <url> <output.png>\`
- \`check page title\`: Run \`scripts/check_title.sh <url>\`

## Output Expectations:
Scripts log results to stdout. Exit 0 = success. Agent should verify:
- \`example.png\` exists
- "Title:" string is printed to stdout
