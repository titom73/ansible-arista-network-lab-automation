#!/bin/bash
#
# Purpose: Monitor Git status for CI
#          multiline
# Author: @titom73
# Date: 2020-11-19
# Version: 0.1
# License: BSD
# --------------------------------------




# if git diff-index --quiet HEAD --; then
if [[ `git status --porcelain` ]]; then
    # No changes
    echo 'Some changes'
else
    # Changes
    echo 'No change'
fi
