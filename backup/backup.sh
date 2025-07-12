#!/bin/bash

export PGPASSWORD="password"  # this must match POSTGRES_PASSWORD in docker-compose

TIMESTAMP=$(date +"%Y%m%d%H%M%S")
BACKUP_FILE="/backups/pg_backup_$TIMESTAMP.sql.gz"

pg_dump -h db -U user microdb | gzip > "$BACKUP_FILE"

# Optional: delete backups older than 7 days
find /backups -type f -name "*.sql.gz" -mtime +7 -exec rm {} \;
