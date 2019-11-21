#!/bin/sh
# File: /usr/local/bin/backup-export.sh
EXTERNAL_DRIVE="/run/media/tomer/Seagate Expansion Drive/Backups"
ARCHIVE_FILE="$1"

if [ -z "$1" ]; then
  echo "Please specify the full path of the archive file."
fi

logger -s "Exporting backup to external drive..."
cp $ARCHIVE_FILE "$EXTERNAL_DRIVE"
