#!/bin/bash
set -e
python3 frequency.py data.txt
bash update_readme.sh