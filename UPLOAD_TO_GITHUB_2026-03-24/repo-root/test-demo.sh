#!/bin/bash
# Clawd 动画全播放测试脚本
# 用法: bash test-demo.sh [每个动画秒数，默认8]

DELAY=${1:-8}

SVGS=(
  "clawd-idle-living.svg"
  "clawd-sleeping.svg"
  "clawd-working-thinking.svg"
  "clawd-working-typing.svg"
  "clawd-working-juggling.svg"
  "clawd-working-sweeping.svg"
  "clawd-working-building.svg"
  "clawd-working-debugger.svg"
  "clawd-working-wizard.svg"
  "clawd-working-carrying.svg"
  "clawd-working-conducting.svg"
  "clawd-working-confused.svg"
  "clawd-working-overheated.svg"
  "clawd-error.svg"
  "clawd-working-ultrathink.svg"
  "clawd-happy.svg"
  "clawd-notification.svg"
  "clawd-disconnected.svg"
)

echo "=== Clawd Demo: ${#SVGS[@]} animations, ${DELAY}s each ==="
for i in "${!SVGS[@]}"; do
  svg="${SVGS[$i]}"
  echo "[$((i+1))/${#SVGS[@]}] $svg"
  curl -s -X POST http://127.0.0.1:23334/state \
    -H "Content-Type: application/json" \
    -d "{\"state\":\"working\",\"svg\":\"$svg\"}"
  sleep "$DELAY"
done
echo "=== DONE ==="
