#!/bin/bash
# 极简模式 SVG 动画测试脚本
# 用法: bash test-mini.sh [每个动画秒数，默认6]
# 注意: 先 npm start 启动应用，再运行此脚本

DELAY=${1:-6}

SVGS=(
  "clawd-mini-idle.svg"
  "clawd-mini-enter.svg"
  "clawd-mini-peek.svg"
  "clawd-mini-alert.svg"
  "clawd-mini-happy.svg"
  "clawd-mini-crabwalk.svg"
)

STATES=(
  "mini-idle"
  "mini-enter"
  "mini-peek"
  "mini-alert"
  "mini-happy"
  "mini-crabwalk"
)

echo "=== Mini Mode Demo: ${#SVGS[@]} animations, ${DELAY}s each ==="
for i in "${!SVGS[@]}"; do
  svg="${SVGS[$i]}"
  state="${STATES[$i]}"
  echo "[$((i+1))/${#SVGS[@]}] $state → $svg"
  curl -s -X POST http://127.0.0.1:23334/state \
    -H "Content-Type: application/json" \
    -d "{\"state\":\"$state\",\"svg\":\"$svg\"}"
  sleep "$DELAY"
done

echo ""
echo "Returning to idle..."
curl -s -X POST http://127.0.0.1:23334/state \
  -H "Content-Type: application/json" \
  -d '{"state":"idle","svg":"clawd-idle-follow.svg"}'
echo ""
echo "=== DONE ==="
