#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Your Name | Course: Open Source Software
# Description: Checks if a package is installed and shows its details

# --- Define the package to check ---
PACKAGE="vlc"   # The software we are inspecting

# --- Check if package is installed using dpkg ---
if dpkg -l $PACKAGE 2>/dev/null | grep -q "^ii"; then
    # If installed, show its details
    echo "================================"
    echo " Package Inspector Report"
    echo "================================"
    echo "$PACKAGE is installed on this system."
    echo ""
    echo "--- Package Details ---"
    # Extract version and status from package info
    dpkg -s $PACKAGE | grep -E 'Version|Status'
    echo ""
    echo "--- Philosophy Note ---"

    # --- Case statement to print philosophy note ---
    case $PACKAGE in
        vlc)
            echo "VLC: Born in a university, owned by the world."
            echo "A symbol of what students can build and share freely."
            ;;
        firefox)
            echo "Firefox: A nonprofit fighting for an open web."
            ;;
        git)
            echo "Git: Built by Linus when proprietary software failed him."
            ;;
        python3)
            echo "Python: A language shaped entirely by its community."
            ;;
        *)
            echo "$PACKAGE: Another open source tool making the world better."
            ;;
    esac

    echo "================================"

else
    # If not installed, show this message
    echo "$PACKAGE is NOT installed on this system."
    echo "Install it with: sudo apt install $PACKAGE"
fi
