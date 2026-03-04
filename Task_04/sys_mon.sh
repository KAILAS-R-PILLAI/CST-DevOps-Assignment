#!/bin/bash

echo "=== CPU USAGE ==="
top -bn1 | grep "Cpu(s)"

echo -e "\n=== MEMORY USAGE ==="
free -h

echo -e "\n=== DISK USAGE ==="
df -h