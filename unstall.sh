#!/bin/bash -e

docker stack rm docker-registry

cd app
docker-compose down
cd ../

docker stack rm gateway
