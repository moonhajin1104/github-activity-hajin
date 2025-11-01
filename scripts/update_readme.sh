#!/bin/bash
set -e

echo -e "\n## Update Log\n$(date)" >> ../README.md

git -C .. config user.name "Hajin Moon"
git -C .. config user.email "your-email@example.com"
git -C .. add README.md
git -C .. commit -m "Updated README with timestamp"

git -C .. push origin main