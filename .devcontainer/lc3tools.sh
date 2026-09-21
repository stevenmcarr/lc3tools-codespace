#!/bin/bash
# Launch the LC3Tools GUI on the codespace's virtual desktop.
export DISPLAY="${DISPLAY:-:1}"
exec /opt/lc3tools/lc3tools --no-sandbox --disable-gpu "$@"
