#!/bin/sh
echo "MYSQL_HOST=\"${MYSQL_HOST}\"
MYSQL_USER=\"${MYSQL_USER}\"
MYSQL_PASSWORD=\"${MYSQL_PASSWORD}\"
MYDUMPER_THREADS=${MYDUMPER_THREADS}

mydumper -v 3 -h $MYSQL_HOST -u $MYSQL_USER -p $MYSQL_PASSWORD -t $MYDUMPER_THREADS -c --less-locking --use-savepoints" > /run-mydumper.sh
chmod +x /run-mydumper.sh
