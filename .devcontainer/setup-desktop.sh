#!/bin/bash
# Add LC3Tools to the desktop's right-click menu (runs once, after the container is created).
menu="$HOME/.fluxbox/menu"
if [ -f "$menu" ] && ! grep -q lc3tools "$menu"; then
    sed -i '0,/\[begin\].*/s//&\n    [exec] (LC3Tools) { lc3tools } <>/' "$menu"
fi
