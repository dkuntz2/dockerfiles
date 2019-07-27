#!/bin/sh

set -e

if [[ -z "$CONFIG_DIR" ]]; then
  CONFIG_DIR="/config"
fi

if [[ ! -f "$CONFIG_DIR/settings.json" ]]; then
  cp /etc/defaults/transmission-settings.json "$CONFIG_DIR/settings.json"
fi

/usr/bin/transmission-daemon --foreground --config-dir "$CONFIG_DIR"
