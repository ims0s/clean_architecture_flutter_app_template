#!/usr/bin/env bash

# Debian-friendly wrapper for: flutter pub run build_runner watch --delete-conflicting-outputs
# Place this file next to the PowerShell original `freezer_builder.ps1` and run with:
#   ./freezer_builder.sh

set -euo pipefail

GREEN="\033[32m"
RED="\033[31m"
YELLOW="\033[33m"
NC="\033[0m"

echo -e "${GREEN}Starting Flutter build_runner watch...${NC}"

if ! command -v flutter >/dev/null 2>&1; then
  echo -e "${RED}flutter not found in PATH. Install Flutter or add it to PATH.${NC}" >&2
  exit 2
fi

# Ensure we cleanup child process on exit
child_pid=""
cleanup() {
  if [[ -n "$child_pid" ]]; then
    echo -e "${YELLOW}Stopping build_runner (pid=$child_pid)...${NC}"
    kill "$child_pid" 2>/dev/null || true
    wait "$child_pid" 2>/dev/null || true
  fi
}
trap cleanup EXIT SIGINT SIGTERM

# Start the watch command in background so we can trap signals and stop it cleanly
flutter pub run build_runner watch --delete-conflicting-outputs &
child_pid=$!

# Wait for the background process to finish and forward its exit status
wait "$child_pid"
status=$?
if [[ $status -ne 0 ]]; then
  echo -e "${RED}build_runner exited with status ${status}${NC}" >&2
  exit $status
fi

echo -e "${GREEN}build_runner finished successfully.${NC}"
