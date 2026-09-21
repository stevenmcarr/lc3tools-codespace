#!/bin/bash
# Open LC3Tools once the virtual desktop is up (runs each time the codespace starts).
for i in $(seq 1 30); do
    [ -e /tmp/.X11-unix/X1 ] && break
    sleep 1
done
pgrep -f /opt/lc3tools/lc3tools > /dev/null || nohup lc3tools > /tmp/lc3tools.log 2>&1 &
