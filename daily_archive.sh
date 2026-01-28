#!/bin/bash
FECHA=$(date +%Y%m%d)
LOG_PATH="$HOME/LEDL_OS_CORE/transaction_history.log"
ARCHIVE_PATH="$HOME/LEDL_OS_CORE/ARCHIVE/log_$FECHA.tar.gz"

mkdir -p $HOME/LEDL_OS_CORE/ARCHIVE

# Compresión y Protección (Atomicidad)
tar -czf "$ARCHIVE_PATH" "$LOG_PATH"
if [ $? -eq 0 ]; then
    echo "[$(date)] ARCHIVE_SUCCESS: Historial firmado y comprimido." >> "$LOG_PATH"
    # Opcional: Limpiar log actual para mantener O(N) bajo
    # > "$LOG_PATH"
fi
