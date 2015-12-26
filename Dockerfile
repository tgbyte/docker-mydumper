FROM tgbyte/cron

RUN apt-get update && \
    apt-get install -y mydumper

RUN mkdir -p /backups
VOLUME /backups
WORKDIR /backups

ENV MYSQL_HOST=db
ENV MYDUMPER_THREADS=2
