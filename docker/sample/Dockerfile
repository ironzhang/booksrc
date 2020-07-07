FROM ubuntu:18.04
LABEL maintainer="iron.zhang@foxmail.com"
ENV REFRESHED_AT 2020-07-07

RUN apt-get update
RUN apt-get -y -q install nginx

RUN mkdir -p /var/www/html/website
ADD nginx/global.conf /etc/nginx/conf.d/
ADD nginx/nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

