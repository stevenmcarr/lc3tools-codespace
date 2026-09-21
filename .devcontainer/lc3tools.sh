#!/bin/bash
# Launch the LC3Tools GUI on the codespace's virtual desktop.
# Electron prints harmless D-Bus warnings, so its output goes to a log.
export DISPLAY="${DISPLAY:-:1}"
log=/tmp/lc3tools.log
setsid /opt/lc3tools/lc3tools --no-sandbox --disable-gpu "$@" > "$log" 2>&1 < /dev/null &
echo "LC3Tools is opening on the desktop (port 6080). Messages go to $log"
