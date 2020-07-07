FROM ubuntu:18.04
LABEL maintainer="iron.zhang@foxmail.com"
ENV REFRESHED_AT 2020-07-08
ENV ETCDCTL_API 3

RUN apt-get -qq update && apt-get -qq install etcd

EXPOSE 2379

ENTRYPOINT ["/usr/bin/etcd"]
CMD []

