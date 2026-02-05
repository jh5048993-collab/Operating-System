#!/bin/bash

echo "System Health Report"
echo "---------------------"
echo "Date: $(date)"
echo "Hostname: $(hostname)"
echo "User: $(whoami)"
echo "Disk Usage:"
df -h /
