#!/bin/bash

docker run -d -p 6379:6379 --name redis -v $PWD/data:/var/lib/redis ironzhang/redis --protected-mode no

