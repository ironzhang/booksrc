#!/bin/bash

docker run -d -p 4567 --name webapp -v $PWD:/opt/webapp ironzhang/sinatra

