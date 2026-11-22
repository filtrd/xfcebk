#!/usr/bin/env bash
set -e

backup="$HOME/xfce-backup-$(date +%Y%m%d-%H%M%S).tar.gz"
items=()
for path in .config/xfce4 .config/xfce4-session .config/gtk-3.0 .config/gtk-4.0 .themes .icons .gtkrc-2.0; do
    [ ! -e "$HOME/$path" ] || items+=("$path")
done

tar -czf "$backup" -C "$HOME" "${items[@]}"
echo "Backup saved to: $backup"
