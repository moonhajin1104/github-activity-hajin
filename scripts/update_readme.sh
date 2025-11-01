#!/bin/bash
echo -e "\n# Update Log\n$(date)" >> README.md
git config user.name "Hajin Moon"
git config user.email "hajin@example.com"
git add README.md
git commit -m "Updated README with timestamp"