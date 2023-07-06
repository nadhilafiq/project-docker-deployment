#!/bin/bash
DATE=$(date +"%Y-%m-%d")
docker exec db pg_dumpall -c -U appuser > /backup/dump_$DATE.sql

# crontab entry for scheduling backup daily at 23:59
59 23 * * * /bin/bash /backup/backup.sh
