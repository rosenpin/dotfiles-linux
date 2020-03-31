#!/bin/sh

SRC=/home/tomer
DST=/media/tomer/EXTSSD/Backups
BLACKLIST=/home/tomer/.config/backup-blacklist.conf

logger -s "Starting filesystem sync"
rsync -aAXS --delete-excluded --exclude-from=$BLACKLIST $SRC $DST
logger -s "Finished filesystem sync"

/home/tomer/bin/backup-compress.sh

