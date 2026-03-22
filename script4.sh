#!/bin/bash
# Script 4: Log File Analyzer
# Author: Your Name | Course: Open Source Software
# Description: Reads a log file and counts keyword occurrences

# --- Take log file and keyword as input ---
LOGFILE=$1          # First argument is the log file path
KEYWORD=${2:-"error"}  # Second argument is keyword, default is "error"

# --- Counter variable starting at zero ---
COUNT=0

# --- Check if file exists ---
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    echo "Usage: bash script4.sh /path/to/logfile keyword"
    exit 1
fi

# --- Check if file is empty ---
if [ ! -s "$LOGFILE" ]; then
    echo "Warning: File $LOGFILE is empty."
    exit 1
fi

echo "================================"
echo " Log File Analyzer"
echo "================================"
echo "File    : $LOGFILE"
echo "Keyword : $KEYWORD"
echo "================================"

# --- While loop to read file line by line ---
while IFS= read -r LINE; do
    # Check if line contains the keyword (case insensitive)
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        # If found, increase counter by 1
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# --- Print summary ---
echo ""
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo ""

# --- Show last 5 matching lines ---
echo "--- Last 5 matching lines ---"
grep -i "$KEYWORD" "$LOGFILE" | tail -5

echo "================================"
