#!/bin/bash

source ./backup.conf

DATE=$(date "+F-%H-%M-%S")
USERNAME="$username"
u="$USER"

ARCHIVE_FILE="${u}_${DATE}.tar.gz"

tar -zcf $DEST_DIR/$ARCHIVE_FILE $BACKUP_DIRS

echo "First Step is Done"

md5sum $DEST_DIR/$ARCHIVE_FILE > $DEST_DIR/$ARCHIVE_FILE.md5.txt

mv $DEST_DIR/$ARCHIVE_FILE.md5.txt $DEST_DIR

echo "Finish"