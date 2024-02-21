#!/usr/bin/env bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
tmux bind-key v run-shell "$CURRENT_DIR/main.sh"
