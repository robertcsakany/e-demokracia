#!/bin/bash


## #####################################
## handling arguments
## #####################################

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


## #####################################
## END handling arguments
## #####################################


# Get project version
PROJECT_VERSION=$(mvn org.apache.maven.plugins:maven-help-plugin:3.2.0:evaluate -Dexpression=project.version -q -DforceStdout)

# Load docker image
docker load --input ./docker/target/edemokracia-application-${PROJECT_VERSION}_docker_image.tar

# mvn clean install -f ./docker/pom.xml
# docker run -d --name edemokracia-application -p 8181:8181 edemokracia-application
# docker logs -f edemokracia-application
# docker stop edemokracia-application



## #####################################
## Run keycloak 
## #####################################

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


## #####################################
## END keycloak 
## #####################################

INSTANCE_NAME=postgres-edemokracia

# Test running instance is presented or doesn't
INSTANCE_RUNNING=$(docker ps | grep $INSTANCE_NAME | sed -e 's/^[[:space:]]*//')
INSTANCE_EXIST=$(docker ps -a | grep $INSTANCE_NAME | sed -e 's/^[[:space:]]*//')

# Some settings related to database
# export JUDO_PLATFORM_HIKARI_CONNECTION_TIMEOUT=120000
# export JUDO_PLATFORM_NARAYANA_DEFAULT_TIMEOUT=120000
# export JUDO_PLATFORM_HIKARI_MAXIMUM_POOL_SIZE=10
# export JUDO_PLATFORM_CASE_INSENSITIVE_LIKE=true

if [ ! -z "$INSTANCE_RUNNING" ]; then
  echo "Instance is running, stopping..."
  docker stop $INSTANCE_NAME
fi


if [ ! -z "$INSTANCE_EXIST" ]; then
  echo "Instance exists, remove..."
  docker rm $INSTANCE_NAME
fi

[ -d  `pwd`/.data/postgres/logs ] || mkdir  -p `pwd`/.data/postgres/logs
[ -d  `pwd`/.data/postgres/data ] || mkdir  -p `pwd`/.data/postgres/data

## Creating new instance
docker run -d \
     -v `pwd`/.data/postgres/logs:/logs \
     -v `pwd`/.data/postgres/data:/var/lib/postgresql/pgdata \
     --name $INSTANCE_NAME \
     -e PGDATA=/var/lib/postgresql/pgdata \
     -e POSTGRES_USER=edemokracia \
     -e POSTGRES_PASSWORD=edemokracia \
     -p 5432:5432 \
     postgres:13.3 \
     -c max_connections=40 \
     -c shared_buffers=512MB \
     -c effective_cache_size=1536MB \
     -c maintenance_work_mem=128MB \
     -c checkpoint_completion_target=0.7 \
     -c wal_buffers=16MB \
     -c default_statistics_target=100 \
     -c random_page_cost=1.1 \
     -c effective_io_concurrency=200 \
     -c work_mem=3276kB \
     -c min_wal_size=1GB \
     -c max_wal_size=4GB \
     -c max_worker_processes=16 \
     -c max_parallel_workers_per_gather=4 \
     -c max_parallel_workers=16 \
     -c max_parallel_maintenance_workers=4

export JUDO_PLATFORM_RDBMS_DIALECT=postgresql

## #####################################
## END postgresql 
## #####################################


export EXTRA_JAVA_OPTS="-Dfile.encoding=UTF-8"

export JUDO_PLATFORM_IDENTIFIER_SIGNER_SECRET=tJ0lt0h9X2WvVydp4SoDIahBdBcctMxlTn6UJ1xTbQYltBF//qPLmyZPU6X02ETnsP/X7G3IDhGttNXISwyi1uJk5haBj3MI88baDxckmOKpAd6Fy93KSZJgPoGuICD0bPYKeXMSSqEKypt4NkY0NiNL2aLVwL3UDCWHsWQsCfk=
export JUDO_PLATFORM_KEYCLOAK_DEFAULT_PASSWORD_POLICY=SAME_EMAIL
export JUDO_PLATFORM_LOG_SMTP_SERVER=true
export JUDO_PLATFORM_RDBMS_DB_DATABASE=edemokracia
export JUDO_PLATFORM_RDBMS_DB_USER=edemokracia
export JUDO_PLATFORM_RDBMS_DB_PASSWORD=edemokracia
export JUDO_PLATFORM_FILESTORE=filesystem

VERSION_NUMBER=$(mvn org.apache.maven.plugins:maven-help-plugin:3.2.0:evaluate -Dexpression=project.version -q -DforceStdout)

CURR_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

KARAF_DIR=$CURR_DIR/.karaf

rm -rf $KARAF_DIR && \
mkdir $KARAF_DIR && \
cd $KARAF_DIR && \
tar xvvzf $CURR_DIR/karaf-offline/target/edemokracia-application-karaf-offline-${VERSION_NUMBER}.tar.gz && \
mv $KARAF_DIR/edemokracia-application-karaf-offline-${VERSION_NUMBER}/* $KARAF_DIR/ || exit $?

export EXTRA_JAVA_OPTS="-Xms1024m -Xmx1024m -Dfile.encoding=UTF-8 -Dsun.jnu.encoding=UTF-8"
$KARAF_DIR/bin/karaf debug run clean
