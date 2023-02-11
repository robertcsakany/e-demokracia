#!/bin/bash

INSTANCE_NAME=keycloak-edemokracia
KEYCLOAK_PORT=8080
KEYCLOAK_TIMEOUT_LIMIT=120 # sec

# Test running instance is presented or doesn't
INSTANCE_RUNNING=$(docker ps | grep $INSTANCE_NAME | sed -e 's/^[[:space:]]*//')
INSTANCE_EXIST=$(docker ps -a | grep $INSTANCE_NAME | sed -e 's/^[[:space:]]*//')


if [ ! -z "$INSTANCE_RUNNING" ]; then
  echo "Instance is running, stopping..."
  docker stop $INSTANCE_NAME
fi


if [ ! -z "$INSTANCE_EXIST" ]; then
  echo "Instance exists, remove..."
  docker rm $INSTANCE_NAME
fi


if [ $(netstat -anv | grep LISTEN | grep -e "[:.]$KEYCLOAK_PORT "  | wc -l) -ge 1 ]; then
  echo "Port $KEYCLOAK_PORT is already used"
  exit 1
fi

keycloak_image=quay.io/keycloak/keycloak:latest

docker run -d \
     --name ${INSTANCE_NAME} \
     -e KEYCLOAK_ADMIN=admin \
     -e KEYCLOAK_ADMIN_PASSWORD=judo \
     -p $KEYCLOAK_PORT:$KEYCLOAK_PORT \
     -it $keycloak_image \
     start-dev --http-port=$KEYCLOAK_PORT --http-relative-path /auth
