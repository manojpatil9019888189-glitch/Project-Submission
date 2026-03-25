#!/bin/bash

LOG_FILE="/opt/container-monitor/logs/monitor.log"

TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

# Get Docker container stats
docker stats --no-stream --format "Container: {{.Name}} | CPU: {{.CPUPerc}} | MEM: {{.MemUsage}}" >> $LOG_FILE

# Add timestamp
echo "Logged at: $TIMESTAMP" >> $LOG_FILE
echo "-----------------------------" >> $LOG_FILE
