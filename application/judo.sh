#!/bin/bash
APP_NAME=edemokracia

## #####################################
## Processing arguments
## #####################################
CURR_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
APP_DIR=$CURR_DIR
MODEL_DIR="$(cd -P -- "$(dirname -- "${APP_DIR}")" && pwd)"

print-help () {
    echo """
JUDO runner.

USAGE: judo.sh COMMANDS... [OPTIONS...]
    clean                           Stop postgressql docker container and clear data.

    prune                           Stop postgressql docker container and delete untracked files in this repository.
        -f                          Clear only frontend data.
        -y                          Skip confirmation.

    update                          Update dependency versions in JUDO project.
    generate                        Generate application based on model in JUDO project.
    dump                            Dump postgresql db data before clearing and starting application.

    build                           Build project.
        -a --build-app-module       Build app module only.
        -M --skip-model             Skip model building.
        -B --skip-backend           Skip backend building.
        -F --skip-frontend          Skip frontend building.
        -BM --skip-backendmodels    Skip Backend Models building.
        -KA --skip-karaf            Skip Backend Karaf building.
        -d --docker                 Build docker image.
        -s --schema                 Build schema migration image.
        -v <VERSION> --version <VERSION>    Record given version number frontend root application's version.html during frontend build.

    run                             Run application with postgresql and keycloak.
        -K --skip-keycloak          Skip starting keycloak.
        -kpg --karaf-hsqldb         Run karaf with hsqldb (default)
        -khs --karaf-postgres       Run karaf with postgressql
        -dd --docker-dev            Use docker compose in dev-mode (no HTTPS, keycloak in dev mode and hsqldb)
        -dp --docker-prod           Use docker compose in prod-mode (HTTPS, production mode keyclak and postgresql)
        -pp --postgres-port)        Use given port for postgresql (default 5432)
        -ap --keycloak-port)        Use given port for keycloak (default 8080)
        -kp --karaf-port)           Use given port for karaf (default 8181)


EXAMPLES:
    ./judo.sh prune -f                          Clear untracked data in application/frontend if opening modeling project freezes in designer.

    ./judo.sh build -a                          Build app module only for backend. Useful for updating custom operations for running backend.
    ./judo.sh build -F -KA                      Build model and backend without frontend. Useful when custom operations need to be implemented.

    ./judo.sh prune build run                   Super fresh application build and start.
    ./judo.sh build clean run                   Stop postgressql docker container then build and run application (including keycloak) with clean db.
    ./judo.sh build run -K                      Stop postgressql docker container then build and restart application.
    ./judo.sh build -M -F -BM clean run         Stop postgressql docker container then rebuild app and start application with clean db.
    ./judo.sh build -M -F -BM run -K            Rebuild app and restart application.
"""
}

[ $# -eq 0 ] && print-help && exit 0

run=0
dump=0
build=0
clean=0
prune=0
docker=0
schema=0
update=0
frontend=0
generate=0
skipKaraf=0
skipModel=0
skipBackend=0
confirmation=1
skipFrontend=0
skipKeycloak=0
buildAppModule=0
skipBackendModels=0
postgres=0
hsqldb=1
karaf=1
compose=0
compose_env=""

FULL_VERSION_NUMBER="SNAPSHOT"
POSTGRES_PORT=5432
KEYCLOAK_PORT=8080
KARAF_PORT=8181

while [ $# -ne 0 ]; do
    case "$1" in
        clean)                          clean=1; shift 1;;

        prune)                          prune=1; shift 1;;
        -f)                             frontend=1; shift 1;;
        -y)                             confirmation=0; shift 1;;

        update)                         update=1; shift 1;;
        generate)                       generate=1; shift 1;;
        dump)                           dump=1; shift 1;;

        build)                          build=1; shift 1;;
        -a | --build-app-module)        buildAppModule=1; skipModel=1; shift 1;;
        -M | --skip-model)              skipModel=1; shift 1;;
        -B | --skip-backend)            skipBackend=1; shift 1;;
        -F | --skip-frontend)           skipFrontend=1; shift 1;;
        -BM | --skip-backendmodels)     skipBackendModels=1; shift 1;;
        -KA | --skip-karaf)             skipKaraf=1; shift 1;;
        -d | --docker)                  docker=1; shift 1;;
        -s | --schema)                  schema=1; shift 1;;

        -v | --version)                 shift 1; export FULL_VERSION_NUMBER=$1; shift 1;;

        run)                            run=1; shift 1;;
        -K  | --skip-keycloak)          skipKeycloak=1; shift 1;;
        -kpg | --karaf-hsqldb)          karaf=1; hsqldb=1; postgres=0; shift 1;;
        -khs | --karaf-postgres)        karaf=1; postgres=1; hsqldb=0; shift 1;;
        -dd | --docker-dev)             karaf=0; compose=1; compose_env="compose-develop"; shift 1;;
        -dp | --docker-prod)            karaf=0; compose=1; compose_env="compose-postgresql-https"; shift 1;;
        -pp | --postgres-port)          shift 1; export POSTGRES_PORT=$1; shift 1;;
        -ap | --keycloak-port)          shift 1; export KEYCLOAK_PORT=$1; shift 1;;
        -kp | --karaf-port)             shift 1; export KEYCLOAK_PORT=$1; shift 1;;

        *)
            echo "Unrecognized option: $1"
            print-help
            exit 22
        ;;
    esac
done



# Args:
# 1 - host
# 2 - port
tcp_port_is_open () {
   local exit_status_code
   curl -t '' --connect-timeout 2 -s telnet://"$1:$2" </dev/null
   exit_status_code=$?
   case $exit_status_code in
     49) return 0 ;;
     7) return 0 ;;
     *) return "$exit_status_code" ;;
   esac
}

get_platform () {
  case $(uname | tr '[:upper:]' '[:lower:]') in
    linux*)
      platform=linux
      ;;
    darwin*)
      platform=osx
      ;;
    msys*)
      platform=windows
      ;;
    *)
      platform=notset
      ;;
  esac
  echo "$platform"
}

get_ip () {
  platform=$(get_platform)
  if [[ $platform == 'linux' ]]; then
    ip=$(hostname -I)
  elif [[ $platform == 'osx' ]]; then
    ip=$(ipconfig getifaddr en0)
  else
    echo "OS is not supported"
    exit 1
  fi
  echo "$ip"
}

get_dashed_ip () {
  ip=$(get_ip)
  ipdash=$(echo "${ip}" |  tr . -)
  echo "$ipdash"
}


# Args:
# 1 - instance name
dump_postgresql () {
    INSTANCE_NAME=$1

    TIMESTAMP=$( date +%Y%m%d_%H%M%S )

    echo "Dumping database..."
    DUMP_FILE=dump_$TIMESTAMP.tar
    docker exec -i ${INSTANCE_NAME} /bin/bash -c "PGPASSWORD=${APP_NAME} pg_dump --username=${APP_NAME} --format=tar ${APP_NAME}" > $DUMP_FILE || exit
    echo "Database dumped to $DUMP_FILE"
}

install_maven_wrapper () {
    mvn wrapper:wrapper -Dmaven=3.8.6
    sed -i '' 's/https:\/\/nexus\.judo\.technology\/repository\/maven-judong\//https:\/\/repo\.maven\.apache\.org\/maven2/g' ${APP_DIR}/.mvn/wrapper/maven-wrapper.properties
}

delete_postgresql_data () {
   [ -d ${APP_DIR}/.data ] && sudo rm -rf ${APP_DIR}/.data
}

prune_frontend () {
    if [ $confirmation -eq 1 ]; then
        [ $frontend -eq 1 ] && location="application/frontend directory" || location="this repository"
        echo -ne "Prune command deletes all untracked files in $location!\nAre you sure you want to continue? [Y/n]: "
        read canContinue
    else
        canContinue="Y"
    fi

    if [ "$canContinue" == "Y" ]; then
        if [ $frontend -eq 1 ]; then
            cd ${APP_DIR}/frontend
            [ -d .flutter ] && rm -rf .flutter
            git clean -dfx
            cd $CURR_DIR
        else
            echo "Pruning repository started..."
            ./application/stop-postgres.sh
            [ -d ${APP_DIR}/.data ] && sudo rm -rf ${APP_DIR}/.data
            git clean -dfx
            [ -d ${APP_DIR}/frontend/.flutter ] && rm -rf ${APP_DIR}/frontend/.flutter
            echo "Pruning repository finished."
        fi
    else
        echo "Aborting prune."
        exit 13
    fi
}

# Args:
# 1 - instance name
stop_and_remove_docker_instance () {
    INSTANCE_NAME=$1

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
}

# Args:
# 1 - instance name
# 2 - port
start_keycloak () {
    INSTANCE_NAME=$1
    KEYCLOAK_PORT=$2
    keycloak_image=quay.io/keycloak/keycloak:latest

    tcp_port_is_open 127.0.0.1 $KEYCLOAK_PORT
    if [ $? -ne 0 ] 
    then
        echo "Could not start Keycloak. Port is already used: ${KEYCLOAK_PORT}" 
    fi

    docker run -d \
        --name ${INSTANCE_NAME} \
        -e KEYCLOAK_ADMIN=admin \
        -e KEYCLOAK_ADMIN_PASSWORD=judo \
        -p $KEYCLOAK_PORT:$KEYCLOAK_PORT \
        -it $keycloak_image \
        start-dev --http-port=$KEYCLOAK_PORT --http-relative-path /auth
}

# Args:
# 1 - instance name
# 2 - port
start_postgres () {
    INSTANCE_NAME=$1
    POSTGRES_PORT=$2

    tcp_port_is_open 127.0.0.1 $POSTGRES_PORT
    if [ $? -ne 0 ] 
    then
        echo "Could not start Postgresql. Port is already used: ${POSTGRES_PORT}" 
    fi

    [ -d ${APP_DIR}/.data/postgres/logs ] || mkdir -p ${APP_DIR}/.data/postgres/logs
    [ -d ${APP_DIR}/.data/postgres/data ] || mkdir -p ${APP_DIR}/.data/postgres/data

    docker run -d \
        -v ${APP_DIR}/.data/postgres/logs:/logs \
        -v ${APP_DIR}/.data/postgres/data:/var/lib/postgresql/pgdata \
        --name $INSTANCE_NAME \
        -e PGDATA=/var/lib/postgresql/pgdata \
        -e POSTGRES_USER=$APP_NAME \
        -e POSTGRES_PASSWORD=$APP_NAME \
        -p $POSTGRES_PORT:5432 \
        postgres:latest \
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
}

# Args:
# 1 - dbtype
# 2 - karaf port
# 3 - keycloak port
# 4 - postgres port (optional)

start_karaf () {
    DB_TYPE=$1
    KARAF_PORT=$2
    KEYCLOAK_PORT=$3
    POSTGRES_PORT=$4

    tcp_port_is_open 127.0.0.1 $KARAF_PORT
    if [ $? -ne 0 ] 
    then
        echo "Could not start karaf. Port is already used: ${KARAF_PORT}" 
    fi
    export JUDO_PLATFORM_RDBMS_DIALECT=$DB_TYPE

    if [ "$DB_TYPE" = "postgresql" ]; then
        export JUDO_PLATFORM_RDBMS_DB_HOST=localhost
        export JUDO_PLATFORM_RDBMS_DB_PORT=$POSTGRES_PORT
        export JUDO_PLATFORM_RDBMS_DB_USER=$APP_NAME
        export JUDO_PLATFORM_RDBMS_DB_PASSWORD=$APP_NAME
        export JUDO_PLATFORM_RDBMS_DB_DATABASE=$APP_NAME
    fi

    export EXTRA_JAVA_OPTS="-Dfile.encoding=UTF-8"

    export JUDO_PLATFORM_IDENTIFIER_SIGNER_SECRET=tJ0lt0h9X2WvVydp4SoDIahBdBcctMxlTn6UJ1xTbQYltBF//qPLmyZPU6X02ETnsP/X7G3IDhGttNXISwyi1uJk5haBj3MI88baDxckmOKpAd6Fy93KSZJgPoGuICD0bPYKeXMSSqEKypt4NkY0NiNL2aLVwL3UDCWHsWQsCfk=
    export JUDO_PLATFORM_KEYCLOAK_DEFAULT_PASSWORD_POLICY=SAME_EMAIL
    export JUDO_PLATFORM_LOG_SMTP_SERVER=true
    export JUDO_PLATFORM_RDBMS_DB_DATABASE=$APP_NAME
    export JUDO_PLATFORM_RDBMS_DB_USER=$APP_NAME
    export JUDO_PLATFORM_RDBMS_DB_PASSWORD=$APP_NAME
    export JUDO_PLATFORM_FILESTORE=filesystem
    export JUDO_PLATFORM_KEYCLOAK_AUTH_SERVER_URL=http://localhost:${KEYCLOAK_PORT}/auth
    
    VERSION_NUMBER=$(${APP_DIR}/mvnw org.apache.maven.plugins:maven-help-plugin:3.2.0:evaluate -Dexpression=project.version -q -DforceStdout)

    KARAF_DIR=${APP_DIR}/.karaf

    rm -rf $KARAF_DIR && \
    mkdir $KARAF_DIR && \
    cd $KARAF_DIR && \
    tar xvvzf $APP_DIR/karaf-offline/target/$APP_NAME-application-karaf-offline-${VERSION_NUMBER}.tar.gz && \
    mv $KARAF_DIR/$APP_NAME-application-karaf-offline-${VERSION_NUMBER}/* $KARAF_DIR/ || exit $?

    export EXTRA_JAVA_OPTS="-Xms1024m -Xmx1024m -Dfile.encoding=UTF-8 -Dsun.jnu.encoding=UTF-8"

    # replace repository URL
    sed -i '' "s/org\.osgi\.service\.http\.port[ ]*=[ ]*8181/org\.osgi\.service\.http\.port = ${KARAF_PORT}/g" ${KARAF_DIR}/etc/org.ops4j.pax.web.cfg

    $KARAF_DIR/bin/karaf debug run clean || exit
}

# Args:
# 1 - compsose env
start_compose () {
    compose_env=$1
    export EXTERNAL_IP_DASH=$(get_dashed_ip)
    export POSTGRES_DATA=${APP_DIR}/.data/postgres/data

    if [[ $compose_env == 'compose-develop' ]]; then
      echo """
Access in DEV mode:
     App      - http://app.traefik.me/apps
     Keycloak - http://auth.traefik.me

"""
    elif [[ $compose_env == 'compose-postgresql-https' ]]; then
      echo """
Access in PROD mode:
     App      - https://app-${EXTERNAL_IP_DASH}.traefik.me/apps
     Keycloak - https://auth-${EXTERNAL_IP_DASH}.traefik.me

"""
    fi

    load_application_image
    docker compose -f ${APP_DIR}/docker/${compose_env}/docker-compose.yml up
    docker compose -f ${APP_DIR}/docker/${compose_env}/docker-compose.yml down --volumes
}

load_application_image () {
    PROJECT_VERSION=$(${APP_DIR}/mvnw org.apache.maven.plugins:maven-help-plugin:3.2.0:evaluate -Dexpression=project.version -q -DforceStdout -f ${APP_DIR})
    docker load --input ${APP_DIR}/docker/target/${APP_NAME}-application-${PROJECT_VERSION}_docker_image.tar || exit
}

build () {
    echo "Building version ${FULL_VERSION_NUMBER}"
    [ $skipModel -eq 1 ] || ${APP_DIR}/mvnw clean install -f $MODEL_DIR|| exit

    if [ $skipBackend -eq 1 -a $skipFrontend -eq 0 ]; then
        ${APP_DIR}/mvnw clean install -f ${APP_DIR}/frontend-react || exit
        ${APP_DIR}/mvnw clean install -f ${APP_DIR}/frontend-flutter || exit
    elif [ $skipBackend -eq 0 -a $buildAppModule -eq 1 ]; then
        ${APP_DIR}/mvnw clean install -f ${APP_DIR}/app || exit
    elif [ $skipBackend -eq 0 ]; then
        if [ $skipFrontend -eq 1 ]; then
            args="-DskipFrontendReact -DskipFrontendFlutter"
        fi
        if [ $skipBackendModels -eq 1 ]; then
            args="$args -DskipBackendModels"
        fi
        if [ $skipKaraf -eq 1 ]; then
            args="$args -DskipKaraf"
        fi
        if [ $docker -eq 0 ]; then
            args="$args -DskipDocker"
        fi
        if [ $schema -eq 0 ]; then
            args="$args -DskipSchema"
        fi
        ${APP_DIR}/mvnw clean install -f $APP_DIR $args || exit
    fi
}

if [ ! -f "${APP_DIR}/mvnw" ]; then
    echo "Installing maven wrappper"
    install_maven_wrapper
fi

if [ $dump -eq 1 ]; then
    dump_postgresql postgres-${APP_NAME}
fi

if [ $prune -eq 1 ]; then
    prune_frontend
elif [ $clean -eq 1 ]; then
    stop_and_remove_docker_instance postgres-${APP_NAME}
    delete_postgresql_data
fi

if [ $update -eq 1 ]; then
    ${APP_DIR}/mvnw clean install -DupdateJudoVersions=true -DskipModels -f ${MODEL_DIR} && \
    ${APP_DIR}/mvnw clean install -DupdateJudoModuleVersions=true -DskipModels -f ${MODEL_DIR} || exit
fi

if [ $generate -eq 1 ]; then
    ${APP_DIR}/mvnw clean install -DgenerateProject -DskipModels -f ${MODEL_DIR} || exit
fi

if [ $build -eq 1 ]; then
  build
fi


if [ $run -eq 1 ]; then
    if [ $karaf -eq 1 ]; then
        if [ $postgres -eq 1 ]; then
            stop_and_remove_docker_instance postgres-${APP_NAME} 
        fi
        stop_and_remove_docker_instance keycloak-${APP_NAME} 
        if [ $postgres -eq 1 ]; then
            start_postgres postgres-${APP_NAME} $POSTGRES_PORT
        fi

        start_keycloak keycloak-${APP_NAME} $KEYCLOAK_PORT
        if [ $hsqldb -eq 1 ]; then
            db_type=hsqldb
            start_karaf $db_type $KARAF_PORT $KEYCLOAK_PORT $POSTGRES_PORT
        elif [ $postgres -eq 1 ]; then
            db_type=postgresql
            start_karaf $db_type $KARAF_PORT $KEYCLOAK_PORT
        fi
    elif [ $compose -eq 1 ]; then
       dashed_domain=$(get_dashed_ip)
       start_compose $compose_env
    fi
fi

