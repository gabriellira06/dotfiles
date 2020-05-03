#!/bin/sh
if [[ -e /Volumes/lirackup/backup ]]; then    
    rsync -av /Volumes/lirackup/backup/ ~
fi
