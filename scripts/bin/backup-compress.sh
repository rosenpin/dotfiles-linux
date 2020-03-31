#!/bin/sh
# File: /usr/local/bin/backup-compress.sh
NUM_FILES_TO_KEEP=2
FILENAME=/media/tomer/EXTSSD/Backups/archive-tomer\_`date +%Y.%m.%d`.tar.gz 

cd /media/tomer/EXTSSD/Backups/ || exit 1

# Delete old backups
rm -f `ls -t archive-tomer*.tar.gz | awk "NR>$NUM_FILES_TO_KEEP"`

logger -s "Starting backup compression"
tar czf $FILENAME tomer || exit 1
logger -s "Finished backup compression"

# No need since we do the backup on the EXT hard drive already
# /home/tomer/bin/backup-export.sh $FILENAME
