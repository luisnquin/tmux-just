#!/bin/sh

if ! just --summary >/dev/null; then
    return 1
fi

options=$(just --list | sed '1d' | sed -e 's/^[[:space:]]*//')

raw_selected=$(echo "$options" | fzf)

if [ -z "$raw_selected" ]; then
    return 0
fi

selected=$(echo "$raw_selected" | awk '{print $1}')

just "$selected"
