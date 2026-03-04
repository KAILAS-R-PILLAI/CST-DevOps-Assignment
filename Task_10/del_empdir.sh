#!/bin/bash

TARGET_DIR=${1:-.}

echo "Searching for empty directories in: $TARGET_DIR"

find "$TARGET_DIR" -type d -empty -print -delete

echo "Empty directories deleted."