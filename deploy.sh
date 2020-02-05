#!/usr/bin/env bash

set -eux pipefail

#build jar
docker run --rm -v $PWD:/usr/src/mymaven -v m2maven:/root/.m2:rw -w /usr/src/mymaven maven:3.6-alpine mvn clean package

#build docker image
docker build -t berkeley-gtech .

#run docker-compose
docker-compose up -d
