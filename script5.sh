#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Shreyash

echo "Answer the following questions to generate your manifesto:"
echo ""

# --- Take user input ---
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# --- Date and output file ---
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# --- Write manifesto ---
echo "----------------------------------------" > "$OUTPUT"
echo "Open Source Manifesto" >> "$OUTPUT"
echo "Date: $DATE" >> "$OUTPUT"
echo "----------------------------------------" >> "$OUTPUT"
echo "" >> "$OUTPUT"

echo "I believe in the power of open-source software. Tools like $TOOL represent the idea of $FREEDOM in the digital world." >> "$OUTPUT"
echo "I aim to contribute by building $BUILD and sharing it freely with the community." >> "$OUTPUT"
echo "Open source is not just about code, but about collaboration, transparency, and innovation." >> "$OUTPUT"

# --- Display result ---
echo ""
echo "Manifesto saved to $OUTPUT"
echo ""
cat "$OUTPUT"
