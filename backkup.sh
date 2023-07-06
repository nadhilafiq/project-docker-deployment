#!/bin/bash
DATE=$(date +"%Y-%m-%d")
docker exec db pg_dumpall -c -U appuser > /backup/dump_$DATE.sql
