#!/bin/bash
# Скрипт для синхронизации 1С с git через gitsync
# Перед использованием настройте .gitsync/configuration.json

set -e

CONFIG_FILE=".gitsync/configuration.json"

if [ ! -f "$CONFIG_FILE" ]; then
    echo "ERROR: $CONFIG_FILE not found"
    exit 1
fi

echo "=== 1C gitsync ==="
gitsync .
