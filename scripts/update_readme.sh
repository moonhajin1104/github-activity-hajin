#!/bin/bash
set -e
TARGET_README="README.md"
echo -e "\n## Update Log\n$(date)" >> "$TARGET_README"

if [ -z "$CI" ] && [ -z "$GITHUB_ACTIONS" ]; then
  git config user.name "Hajin Moon"
  git config user.email "your-email@example.com"
  git add "$TARGET_README"
  git commit -m "Updated README with timestamp"
  git push origin main
else
  echo "CI environment detected; skipping git commit/push."
fi