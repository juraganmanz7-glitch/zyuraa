#!/bin/bash
# Script minimalis untuk menjalankan cokis.sh dari repository
# Cara pakai: bash run-cokis.sh

# URL script cokis.sh
URL="https://raw.githubusercontent.com/juraganmanz7-glitch/zyuraa/main/cokis.sh"

# Jalankan perintah persis seperti yang Anda minta
echo "⏳ Menjalankan script cokis.sh..."
bash -c "$(curl -fsSL $URL)"
