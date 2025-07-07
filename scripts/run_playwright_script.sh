#!/bin/bash
INPUT="$1"
SCRIPT_PATH=$(jq -r '.script' <<< "$INPUT")
playwright test "$SCRIPT_PATH"
