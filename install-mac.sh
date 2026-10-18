#!/bin/bash
# pull. — one-line installer for macOS · by LAB. x SUNN.
#   curl -fsSL https://github.com/mutesonix/pull./releases/latest/download/install-mac.sh | bash
# Downloading with curl (not the browser) means macOS doesn't quarantine the app,
# so there's no "Apple could not verify…" block and no trip to Privacy & Security.
set -euo pipefail
URL="https://github.com/mutesonix/pull./releases/latest/download/pull-setup-mac.zip"
TMP="$(mktemp -d /tmp/pull-setup.XXXXXX)"
printf '\n  \033[1mpull.\033[0m\033[31m●\033[0m  installing for macOS\n\n'
curl -fL --progress-bar -o "$TMP/pull.zip" "$URL"
ditto -x -k "$TMP/pull.zip" "$TMP"
APP="$TMP/pull. Setup.app"
[ -d "$APP" ] || { echo "  The download didn't contain pull. Setup — try again in a minute."; exit 1; }
xattr -dr com.apple.quarantine "$APP" 2>/dev/null || true
printf '\n  Opening pull. Setup — press INSTALL in the window that appears.\n\n'
open "$APP"
