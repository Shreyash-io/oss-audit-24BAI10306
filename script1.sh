#!/bin/bash
# Script 1: System Identity Report
# Author: Your Name | Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Shreyash"
SOFTWARE_CHOICE="Linux Kernel"   # change this later if needed

# --- System info ---
KERNEL=$(uname -r)                 # kernel version
USER_NAME=$(whoami)               # current user
UPTIME=$(uptime -p)               # system uptime
DATE=$(date)                      # current date & time
HOME_DIR=$HOME                    # home directory

# Get Linux distribution name
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"')

# --- Display ---
echo "================================"
echo "  Open Source Audit — $STUDENT_NAME"
echo "================================"

echo "Distribution : $DISTRO"
echo "Kernel       : $KERNEL"
echo "User         : $USER_NAME"
echo "Home Dir     : $HOME_DIR"
echo "Uptime       : $UPTIME"
echo "Date & Time  : $DATE"

echo ""
echo "License Info : This system is based on open-source software (mostly GPL licensed)."
echo "================================"
