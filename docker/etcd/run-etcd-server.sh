#!/bin/bash

docker run -d -p 2379:2379 --name etcd -v $PWD/data:/default.etcd ironzhang/etcd

