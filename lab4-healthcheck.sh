#!/usr/bin/env bash
set -euo pipefail

URL="http://127.0.0.1:8000/"
TIMEOUT=5

HTTP_CODE=$(curl -s -o /dev/null -w "%{http_code}" --max-time "${TIMEOUT}" "${URL}" || echo "000")

if [ "${HTTP_CODE}" = "200" ]; then
    echo "[OK]Сервис работает - HTTP ${HTTP_CODE} (${URL})"
    exit 0
else
    echo "[FAIL] Сервис недоступен - HTTP ${HTTP_CODE} (${URL})"
    exit 1
fi
