#!/bin/bash


NRP="3324600019"

LOG_FILE="${NRP}_monssh_log.txt"

echo "===================================================" | tee -a "$LOG_FILE"
echo "        Mulai Monitoring Service SSH"               | tee -a "$LOG_FILE"
echo "===================================================" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"

while true; do
    TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")


    systemctl is-active ssh > /dev/null 2>&1

    if [ $? -eq 0 ]; then
        echo "$TIMESTAMP: Service SSH aktif." | tee -a "$LOG_FILE"
    else
        echo "$TIMESTAMP: PERINGATAN! Service SSH TIDAK AKTIF!" | tee -a "$LOG_FILE"

        notify-send "Waarning SSH" "Service SSH TIDAK AKTIF pada $TIMESTAMP!" > /dev/null 2>&1 &
    fi

    sleep 10
done
