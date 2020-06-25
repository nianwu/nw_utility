#!/bin/bash -e

cd gateway

bash deploy.sh

cd ../app

docker-compose up -d

cd ../docker-registry

bash deploy.sh