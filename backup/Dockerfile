FROM postgres:13

RUN apt-get update && apt-get install -y cron gzip

COPY backup.sh /backups/backup.sh
COPY crontab.txt /backups/crontab.txt

RUN chmod +x /backups/backup.sh && \
    crontab /backups/crontab.txt

CMD ["cron", "-f"]

