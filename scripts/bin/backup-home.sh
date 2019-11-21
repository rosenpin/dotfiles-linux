#!/bin/sh
# File: /usr/local/bin/backup-sync.sh
SRC=/home/tomer/
DST=/media/tomer/backups
BLACKLIST=/home/tomer/.config/backup-blacklist.conf

logger -s "Starting filesystem sync"
rsync -aAXS --delete-excluded --exclude-from=$BLACKLIST $SRC $DST
logger -s "Finished filesystem sync"
