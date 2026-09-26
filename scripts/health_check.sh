#!/bin/bash

LOG="/var/log/purpletech-health.log"

echo "================================" >> "$LOG"
echo "Health Check: $(date)" >> "$LOG"
echo "Hostname: $(hostname)" >> "$LOG"

echo "--- CPU / Load ---" >> "$LOG"
uptime >> "$LOG"

echo "--- Memory ---" >> "$LOG"
free -h >> "$LOG"

echo "--- Disk ---" >> "$LOG"
df -h / >> "$LOG"

echo "--- Web Service ---" >> "$LOG"
systemctl is-active nginx >> "$LOG"

echo "--- Listening Ports ---" >> "$LOG"
ss -tulpn >> "$LOG"

echo "Health check completed."

echo "PurpleTech monitoring is running"
