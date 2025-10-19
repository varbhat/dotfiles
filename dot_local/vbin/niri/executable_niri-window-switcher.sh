#!/usr/bin/env bash
# Niri window switcher using fuzzel
# Inspired by sway version: https://gist.github.com/lbonn/89d064cde963cfbacabd77e0d3801398

set -e

row=$(niri msg --json windows | jq -r '
    .[] |
    (if .is_focused then "*" else " " end) as $asterisk |
    "\($asterisk) [ws:\(.workspace_id)] \(.app_id): \(.title) (\(.id))\u0000icon\u001f\(.app_id)"
' | fuzzel -d -p "Window Switcher ")

if [ -n "$row" ]; then
    # Extract window ID from parentheses
    winid=$(echo "$row" | sed 's/.*(\([0-9]*\))$/\1/')
    niri msg action focus-window --id "$winid"
fi
