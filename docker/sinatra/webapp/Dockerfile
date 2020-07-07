FROM ubuntu:18.04
LABEL maintainer="iron.zhang@foxmail.com"
ENV REFRESHED_AT 2020-07-07

#ADD apt/sources.list /etc/apt/

RUN apt-get update
RUN apt-get -y install ruby ruby-dev build-essential redis-tools
RUN gem install --no-rdoc --no-ri sinatra json redis

RUN mkdir -p /opt/webapp

EXPOSE 4567

CMD ["/opt/webapp/bin/webapp"]

