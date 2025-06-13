#!/bin/bash

SOURCE_DIR="/home/vboxuser/tes_file"
BACKUP_DIR="/home/vboxuser/backup"
LOG_FILE="$BACKUP_DIR/backup_log.txt"

mkdir -p "$BACKUP_DIR"

START_TIME=$(date +%s)
CURRENT_FILE=1

while [ $(( $(date +%s) - START_TIME )) -lt 3600 ]; do
    TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")
    SRC_FILE="$SOURCE_DIR/file$CURRENT_FILE"
    DEST_FILE="$BACKUP_DIR/file$CURRENT_FILE"

    if [ -f "$SRC_FILE" ]; then
        cp -f "$SRC_FILE" "$DEST_FILE"
        echo "$TIMESTAMP: Berhasil backup file$CURRENT_FILE" >> "$LOG_FILE"
    else
        echo "$TIMESTAMP: file$CURRENT_FILE TIDAK DITEMUKAN" >> "$LOG_FILE"
    fi

    CURRENT_FILE=$((CURRENT_FILE + 1))
    if [ $CURRENT_FILE -gt 10 ]; then
        CURRENT_FILE=1
    fi

    sleep 15
done
