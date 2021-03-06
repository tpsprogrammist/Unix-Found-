#!/bin/bash

# mocking the application files
touch /tmp/{access,error,webservice}.mock.log

V_BACKUP_DATE=$(date '+%Y%m%d')
echo "Backup date set to: ${V_BACKUP_DATE}"

V_BACKUP_DIR="${HOME}/backup/${V_BACKUP_DATE}"
echo "Backup dir set to: ${V_BACKUP_DIR}"

mkdir -p "${V_BACKUP_DIR}"

echo "Files to be copied:"
ls -1 /tmp/*.mock.log

echo	# prints the empty string
cp -v /tmp/*.mock.log "${V_BACKUP_DIR}"
