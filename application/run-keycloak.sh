#!/bin/bash

INSTANCE_NAME=keycloak-edemokracia

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


if [ $(netstat -anv | grep LISTEN | grep -e "[:.]8080 "  | wc -l) -ge 1 ]; then
  echo "Port 8080 is already used"
  exit 1
fi

# For ssl truststore
# Add volume
#     -v `pwd`/certs.jks:/truststore.jks
# and parameters
#     -Djavax.net.ssl.trustStore=/truststore.jks -Djavax.net.ssl.trustStorePassword=changeit

# For import add volumes with
#     -v `pwd`/docker/config/keycloak-realm-config/:/opt/jboss/keycloak/realm-config \
# and add parameters
#     -Dkeycloak.profile.feature.upload_scripts=enabled \
#     -Dkeycloak.migration.action=import \
#     -Dkeycloak.migration.provider=dir \
#     -Dkeycloak.migration.dir=/opt/jboss/keycloak/realm-config \
#     -Dkeycloak.migration.strategy=IGNORE_EXISTING \
#     -Dkeycloak.migration.dir=/opt/jboss/keycloak/realm-config  -Dkeycloak.migration.strategy=IGNORE_EXISTING

docker run -d \
     --name ${INSTANCE_NAME} \
     -e KEYCLOAK_USER=admin \
     -e KEYCLOAK_PASSWORD=judo \
     -p 8080:8080 \
     -it quay.io/keycloak/keycloak \
     -b 0.0.0.0 \
     -Djboss.http.port=8080
