#!/bin/bash

POCKETBOOK_MOUNT="/run/media/$USER/PB634/"

CALIBRE_LIBRARY_SRC="$HOME/Calibre Library"
POCKETBOOK_BOOKS_SRC="$POCKETBOOK_MOUNT/Books"
POCKETBOOK_APPS_SRC="$POCKETBOOK_MOUNT/applications"

BACKUP_DIR="$HOME/Backups/Ebooks/"

mkdir -p "$BACKUP_DIR"

rsync -av --progress --delete "$CALIBRE_LIBRARY_SRC" "$BACKUP_DIR"
rsync -av --progress --delete "$POCKETBOOK_BOOKS_SRC" "$BACKUP_DIR"
rsync -av --progress --delete "$POCKETBOOK_APPS_SRC" "$BACKUP_DIR"

echo "Done."
