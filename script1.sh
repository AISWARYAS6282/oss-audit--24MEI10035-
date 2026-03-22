#!/bin/bash
# Script 1: System Identity Report
# Author: [Your Name] | Course: Open Source Software
# Description: Displays system information like a welcome screen

# --- Variables ---
STUDENT_NAME="AISWARYA"     # Fill in your name
SOFTWARE_CHOICE="VLC"             # Our chosen software

# --- Collect System Info ---
KERNEL=$(uname -r)                # Gets the Linux kernel version
USER_NAME=$(whoami)               # Gets the current logged-in username
UPTIME=$(uptime -p)               # Gets how long system has been running
HOME_DIR=$HOME                    # Gets the home directory of current user
DATE=$(date '+%d %B %Y %H:%M')   # Gets current date and time
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"')
# Above line reads the OS info file and extracts the distro name

# --- Display Welcome Screen ---
echo "================================"
echo " Open Source Audit — $STUDENT_NAME"
echo " Software Choice  — $SOFTWARE_CHOICE"
echo "================================"
echo "Distro  : $DISTRO"
echo "Kernel  : $KERNEL"
echo "User    : $USER_NAME"
echo "Home    : $HOME_DIR"
echo "Uptime  : $UPTIME"
echo "Date    : $DATE"
echo "================================"
echo "This system runs Linux, covered "
echo "under the GNU GPL v2 license.   "
echo "VLC is licensed under GPL-2+    "
echo "================================"
