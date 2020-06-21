#!/bin/bash -e

export COMPOSE_STACK_NAME=docker-registry

docker-compose config | docker stack deploy -c - ${COMPOSE_STACK_NAME}