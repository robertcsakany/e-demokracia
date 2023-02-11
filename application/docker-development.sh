#!/bin/bash

INSTANCE_NAME=edemokracia-application

case $(uname | tr '[:upper:]' '[:lower:]') in
  linux*)
    export platform=linux
    ;;
  darwin*)
    export platform=osx
    ;;
  msys*)
    export platform=windows
    ;;
  *)
    export platform=notset
    ;;
esac

if [[ $platform == 'linux' ]]; then
   export ip=$(hostname -I)
elif [[ $platform == 'osx' ]]; then
   export ip=$(ipconfig getifaddr en0)
else
   echo "OS is not supported"
   exit 1
fi

export ipdash=$(echo "${ip}" |  tr . -)
echo "IP address used to connect: ${ip}"
echo "URL to access: ${ipdash}"


# Get project version
PROJECT_VERSION=$(mvn org.apache.maven.plugins:maven-help-plugin:3.2.0:evaluate -Dexpression=project.version -q -DforceStdout)

# Load docker image
docker load --input ./docker/target/edemokracia-application-${PROJECT_VERSION}_docker_image.tar

# mvn clean install -f ./docker/pom.xml
# docker run -d --name edemokracia-application -p 8181:8181 edemokracia-application
# docker logs -f edemokracia-application
# docker stop edemokracia-application
