#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="python3"

# Check if package is installed
if dpkg -l | grep -q $PACKAGE; then
    echo "$PACKAGE is installed."
    dpkg -l | grep $PACKAGE | head -n 1
else
    echo "$PACKAGE is NOT installed."
fi

# Case statement for philosophy note
case $PACKAGE in
    python3) echo "Python: a community-driven language empowering developers worldwide" ;;
    git) echo "Git: version control system built for open collaboration" ;;
    vlc) echo "VLC: open-source media player supporting all formats" ;;
    firefox) echo "Firefox: browser promoting an open and free web" ;;
    *) echo "Unknown package" ;;
esac
