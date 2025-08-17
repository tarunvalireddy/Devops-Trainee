#!/bin/bash

######################################
# version     :v1
# author      : tarun_valireddy
# Date        :17-Aug-2025
# Description : This script is used to backup the files from the
# /etc directory to /tmp with the name backup-date-of-currentday. 
#########################################

set -e  # Exit if a command fails
set -x  # Debug mode

SOURCE_DIR="/etc/"
BACKUP_DIR="/tmp/backup-$(date +%F)"
ARCHIVE_NAME="backup-$(date +%F).tar.gz"

# Create backup directory
mkdir -p "$BACKUP_DIR"

# Copy files
sudo cp -r "$SOURCE_DIR" "$BACKUP_DIR/"


echo "Backup is Successful"
echo "Backup stored at: /tmp/$ARCHIVE_NAME"

