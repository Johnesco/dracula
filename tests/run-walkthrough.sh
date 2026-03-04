#!/bin/bash
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"
# Platform-aware ifhub root
if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" ]]; then
    I7_ROOT="/c/code/ifhub"
else
    I7_ROOT="/mnt/c/code/ifhub"
fi
exec bash "$I7_ROOT/tools/testing/run-walkthrough.sh" --config "$SCRIPT_DIR/project.conf" "$@"
