#!/bin/bash

# =============================================================================
# TCSS 506 - Assignment 0: Become Familiar with Linux
# Justin K
# =============================================================================

# Question #1
# --------------------------------------------------------------------
# How many total processes are present shortly after the Ubuntu VM boots up?
echo ; echo "========== Question #1: Total Processes =========="
echo "Command: ps aux --no-headers | wc -l"
echo "---"
ps aux --no-headers | wc -l

# Question #2
# --------------------------------------------------------------------
# How many total threads are present shortly after the Ubuntu VM boots up?
echo ; echo "========== Question #2: Total Threads =========="
echo "Command: ps -eLf --no-headers | wc -l"
echo "---"
ps -eLf --no-headers | wc -l

# Question #3
# --------------------------------------------------------------------
# What is the version number of the Linux kernel?
echo ; echo "========== Question #3: Linux Kernel Version =========="
echo "Command: uname -r"
echo "---"
uname -r

# Question #4
# --------------------------------------------------------------------
# What is the model name of the CPU(s) of the VM?
echo ; echo "========== Question #4: CPU Model Name =========="
echo "Command: lscpu | grep 'Model name'"
echo "---"
lscpu | grep "Model name"

# Question #5
# --------------------------------------------------------------------
# What is the total size of the memory swap space in MB?
echo ; echo "========== Question #5: Swap Space (MB) =========="
echo "Command: free -m | grep Swap"
echo "---"
free -m | grep Swap

# Question #6
# --------------------------------------------------------------------
# What is the free disk space of the root partition in MB?
echo ; echo "========== Question #6: Free Disk Space of Root (MB) =========="
echo "Command: df -m /"
echo "---"
df -m /

# Question #7
# --------------------------------------------------------------------
# What is the total number of inodes on the root filesystem?
echo ; echo "========== Question #7: Total Inodes on Root Filesystem =========="
echo "Command: df -i /"
echo "---"
df -i /

# Question #8
# --------------------------------------------------------------------
# What is the average RTT of 10 ICMP ping packets to www.google.com?
echo ; echo "========== Question #8: Average RTT of 10 Pings to Google =========="
echo "Command: ping -c 10 www.google.com"
echo "---"
ping -c 10 www.google.com

# Question #9
# --------------------------------------------------------------------
# What is the interface name of the network device used to route pings to google?
echo ; echo "========== Question #9: Network Interface for Route to Google =========="
echo "Command: ip route get $(dig +short www.google.com | head -1)"
echo "---"
ip route get $(dig +short www.google.com | head -1)

# Question #10
# --------------------------------------------------------------------
# Identify the file system type of the "/" root partition.
echo ; echo "========== Question #10: File System Type of Root =========="
echo "Command: df -T /"
echo "---"
df -T /
echo
echo "Manual page for the filesystem type:"
echo "Command: man ext4 (or whichever type is shown above)"

# BONUS #1
# --------------------------------------------------------------------
# Two unfamiliar Linux commands
echo ; echo "========== BONUS #1: Two Unfamiliar Commands =========="

echo ; echo "--- Command 1: lsblk ---"
echo "Command: lsblk"
lsblk

echo ; echo "--- Command 2: uptime ---"
echo "Command: uptime -p"
uptime -p

echo ; echo "========== End of Script =========="
