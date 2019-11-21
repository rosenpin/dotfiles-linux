#!/bin/sh
# File: /usr/local/bin/backup-compress.sh
NUM_FILES_TO_KEEP=2
FILENAME=/media/tomer/backups/archive-tomer\_`date +%Y.%m.%d`.tar.gz 

cd /media/tomer/backups

# Delete old backups
rm -f `ls -t archive-tomer*.tar.gz | awk "NR>$NUM_FILES_TO_KEEP"`

logger -s "Starting backup compression"
tar czf $FILENAME tomer
logger -s "Finished backup compression"

/home/tomer/bin/backup-export.sh $FILENAME
