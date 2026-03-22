#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Your Name | Course: Open Source Software
# Description: Loops through system directories and reports
#              their size and permissions

# --- List of directories to check ---
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "================================"
echo " Disk and Permission Audit Report"
echo "================================"

# --- For loop to check each directory ---
for DIR in "${DIRS[@]}"; do
    # Check if directory exists
    if [ -d "$DIR" ]; then
        # Get permissions, owner and group
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        # Get size of directory
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo "$DIR"
        echo "  Permissions : $PERMS"
        echo "  Size        : $SIZE"
        echo ""
    else
        echo "$DIR does not exist on this system"
        echo ""
    fi
done

echo "================================"
echo " VLC Configuration Check"
echo "================================"

# --- Check if VLC config directory exists ---
VLC_CONFIG="/usr/share/doc/vlc"

if [ -d "$VLC_CONFIG" ]; then
    # If it exists show its permissions
    echo "VLC config directory found at $VLC_CONFIG"
    PERMS=$(ls -ld $VLC_CONFIG | awk '{print $1, $3, $4}')
    echo "Permissions : $PERMS"
else
    echo "VLC config directory not found."
fi

echo "================================"
