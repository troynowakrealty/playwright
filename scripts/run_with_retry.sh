#!/bin/bash
# Run another script with retries
INPUT="$1"
TOOL=$(jq -r '.tool' <<< "$INPUT")
ARGS=$(jq -r '.args' <<< "$INPUT")
MAX_RETRIES=${RETRIES:-3}
COUNT=0
while [ $COUNT -lt $MAX_RETRIES ]; do
  bash $TOOL $ARGS && exit 0
  COUNT=$((COUNT+1))
  echo "Retry $COUNT failed, retrying..." >&2
  sleep 1
done
exit 1
