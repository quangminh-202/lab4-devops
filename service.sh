#!/usr/bin/env bash
set -euo pipefail

PORT=8000
WORK_DIR="/opt/lab4-service/html"

echo "[$(date)] Запуск HTTP-сервер на порту ${PORT}..."
echo "[$(date)] Рабочий каталог: ${WORK_DIR}"

cd "${WORK_DIR}"
exec python3 -m http.server "${PORT}" --bind 0.0.0.0
