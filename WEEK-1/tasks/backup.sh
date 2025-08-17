#!/bin/bash

######################################
# version     :v1
# author      : tarun_valireddy
# Date        :17-Aug-2025
# Description : This script used to backup the files from the
# /etc directory to the /tmp with the name backup-date-of-currentday. 
#########################################

set -e

set -x

SOURCE_DIR = "/etc"
BACKUP_DIR = "/tmp/backup-$(date + %F)"
ARCHIVE_NAME = "backup-$(date + %F).tar.gz"

mkdir -p $BACKUP_DIR

cp -r $SOURCE_DIR $BACKUP_DIR/

tar -czf /tmp/ARCHIVE_NAME -C /tmp $(basename $BACKUP_DIR)

echo "Backup is Successful"

echo "Backup at the /tmp/$ARCHIVE_NAME"
