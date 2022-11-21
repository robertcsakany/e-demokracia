#!/bin/bash


PROJECT_VERSION=$(mvn org.apache.maven.plugins:maven-help-plugin:3.2.0:evaluate -Dexpression=project.version -q -DforceStdout)

INSTANCE_NAME=edemokracia-application

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


mvn clean install -f ./docker/pom.xml
docker load --input ./docker/target/edemokracia-application-${PROJECT_VERSION}_docker_image.tar

docker run -d --name edemokracia-application -p 8181:8181 edemokracia-application
docker logs -f edemokracia-application
docker stop edemokracia-application
