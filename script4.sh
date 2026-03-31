#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./script4.sh /var/log/syslog error

LOGFILE=$1
KEYWORD=${2:-"error"}   # Default keyword is 'error'
COUNT=0

# Check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# Read file line by line
while IFS= read -r LINE; do
    # Check if line contains keyword
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# Print result
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

# Show last 5 matching lines
echo ""
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
