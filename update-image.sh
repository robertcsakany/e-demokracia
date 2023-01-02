#!/bin/bash

set -e

export INSTANCE_NAME=edemokracia
export AUTH_SERVER="https://sso.judo.technology/auth"

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

docker image prune -a -f
docker volume prune -f
docker container prune -f

docker load --input /tmp/edemokracia_image.tar
docker run --restart=always \
        -d --name $INSTANCE_NAME \
        -p 80:8181 \
        -e JUDO_PLATFORM_KEYCLOAK_AUTH_SERVER_URL=$AUTH_SERVER \
        -e JUDO_PLATFORM_KEYCLOAK_USER=$JUDO_PLATFORM_KEYCLOAK_USER \
        -e JUDO_PLATFORM_KEYCLOAK_PASSWORD=$JUDO_PLATFORM_KEYCLOAK_PASSWORD \
        -e JUDO_PLATFORM_KEYCLOAK_DEFAULT_PASSWORD_POLICY=SAME_EMAIL \
        -e JUDO_PLATFORM_FILESTORE=filesystem \
        -e JUDO_PLATFORM_IDENTIFIER_SIGNER_SECRET=$JUDO_SIGNER_SECRET \
        edemokracia-application \
        --entrypoint "/edemokracia-application/bin/karaf run clean"
