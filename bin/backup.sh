#!/bin/sh
if [[ -e /Volumes/lirackup/backup ]]; then
    rsync -av ~/.ssh/ /Volumes/lirackup/backup/.ssh
    rsync -av ~/Movies/ /Volumes/lirackup/backup/Movies
    rsync -av ~/Pictures/ /Volumes/lirackup/backup/Pictures
    rsync -av --delete --exclude-from="excludes.txt" ~/projects/ /Volumes/lirackup/backup/projects
    rsync -av --delete --exclude-from="excludes.txt" ~/work/ /Volumes/lirackup/backup/work
    rsync -av --delete --exclude-from="excludes.txt" ~/tools/ /Volumes/lirackup/backup/tools
fi
