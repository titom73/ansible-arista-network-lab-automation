#!/bin/bash
#
# Purpose: Monitor Git status for CI
# User: bash <script name>
# Author: @titom73
# Date: 2020-11-19
# Version: 0.1
# License: BSD
# --------------------------------------

# if git diff-index --quiet HEAD --; then
if [[ `git status --porcelain` ]]; then
    # No changes
    echo 'Some changes'
    exit 1
else
    # Changes
    echo 'No change'
    exit 0
fi
