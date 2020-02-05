#!/usr/bin/env bash

set -eux pipefail

#build jar file
./mvnw clean install

#build docker image
docker build -t berkeley-gtech .

#run docker-compose
docker-compose up -d