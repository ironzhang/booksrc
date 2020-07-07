FROM ubuntu:18.04
LABEL maintainer="iron.zhang@foxmail.com"
ENV REFRESHED_AT 2020-07-08

RUN apt-get -qq update && apt-get -qq install redis-server redis-tools

EXPOSE 6379

ENTRYPOINT ["/usr/bin/redis-server"]
CMD []

