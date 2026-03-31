#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Shreyash

# --- Directories to check ---
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "===================================="
echo "      Directory Audit Report"
echo "===================================="

# --- Loop through directories ---
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        
        # Get permissions, owner, group
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        
        # Get size
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    
    else
        echo "$DIR does not exist on this system"
    fi
done

echo ""
echo "===================================="
echo "Checking software config directory"
echo "===================================="

# --- Change this based on your software ---
CONFIG_DIR="/etc/apache2"

if [ -d "$CONFIG_DIR" ]; then
    ls -ld "$CONFIG_DIR"
else
    echo "Config directory not found: $CONFIG_DIR"
fi
