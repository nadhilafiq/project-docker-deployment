#!/bin/bash
if [ $# -eq 0 ]
  then
    echo "Please provide the backup file name as argument"
    exit 1
fi
docker exec -i db psql -U appuser -d appdb < /backup/$1
