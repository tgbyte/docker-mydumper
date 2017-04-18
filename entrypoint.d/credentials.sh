#!/bin/sh
echo "#!/bin/bash -e
MYSQL_HOST=\"${MYSQL_HOST}\"
MYSQL_USER=\"${MYSQL_USER}\"
MYSQL_PASSWORD=\"${MYSQL_PASSWORD}\"
MYDUMPER_THREADS=${MYDUMPER_THREADS}

cd /backups
mydumper -v 3 -h $MYSQL_HOST -u $MYSQL_USER -p $MYSQL_PASSWORD -t $MYDUMPER_THREADS -c --less-locking --use-savepoints --logfile=/backups/mydumper.log
find /backups/ -mindepth 1 -mtime +7 -delete
" > /run-mydumper.sh
chmod +x /run-mydumper.sh
