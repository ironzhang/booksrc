#!/bin/bash

docker run --link redis -t -i ironzhang/redis-cli -h 172.17.0.3

