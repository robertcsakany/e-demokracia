#!/bin/bash
APP_NAME=edemokracia

print-help () {
    echo """
JUDO runner.

USAGE: judo.sh COMMANDS... [OPTIONS...]
    env <env>                       Use alternate env (custom properties file). Default judo is used.
    clean                           Stop postgressql docker container and clear data.

    prune                           Stop postgressql docker container and delete untracked files in this repository.
        -f                          Clear only frontend data.
        -y                          Skip confirmation.

    update                          Update dependency versions in JUDO project.
    generate                        Generate application based on model in JUDO project.
    dump                            Dump postgresql db data before clearing and starting application.
    import                          Import postgresql db data
        -dn --dump-name             Import dump name when it's not deifined loaded the last one
    schema-upgrade                  It can be used with persitent db (postgresql) only. It uses the current running database to
                                    generate the difference and after it applied.
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
        -o \"<name>=<value>,<name2>=<value2>, ...\" --options \"<name>=<value>,<name2>=<value2>, ...\"
                                    Add options (defaults can be defined in judo.properties)
                                    Available options:
                                       runtime = karaf | compose
                                       dbtype = hsqldb | postgresql
                                       compose_env = compose-develop | compose-postgresql-https | or any directory defined in ${APP_DIR}/docker
                                       model_dir = model project directory. Default is the application's parent.
                                       karaf_port = <port>
                                       postgres_port = <port>
                                       keycloak_port = <port>
                                       compose_access_ip = <alternate ip address to access app>
                                       karaf_enable_admin_user = 1


EXAMPLES:
    ./judo.sh prune -f                          Clear untracked data in application/frontend if opening modeling project freezes in designer.

    ./judo.sh build -a                          Build app module only for backend. Useful for updating custom operations for running backend.
    ./judo.sh build -F -KA                      Build model and backend without frontend. Useful when custom operations need to be implemented.

    ./judo.sh prune build run                   Super fresh application build and start.
    ./judo.sh build clean run                   Stop postgressql docker container then build and run application (including keycloak) with clean db.
    ./judo.sh build run -K                      Stop postgressql docker container then build and restart application.
    ./judo.sh build -M -F -BM clean run         Stop postgressql docker container then rebuild app and start application with clean db.
    ./judo.sh build -M -F -BM run -K            Rebuild app and restart application.
    ./judo.sh run -o \"runtime=compose,compose_env=compose-postgresql-https'\"
                                                Run application in docker compose using the copmpose-postgresql-https's docker-compose.yaml
    ./judo.sh env compose-dev build run         Build and run application with compose-dev env. (have to be descibed in compose-dev.properties)

"""
}

# Args:
# 1 - host
# 2 - port
tcp_port_is_open () {
    local exit_status_code
    curl -t '' --connect-timeout 2 -s telnet://"$1:$2" </dev/null
    local exit_status_code=$?
    case $exit_status_code in
        49) return 0 ;;
        7) return 1 ;;
        *) return "$exit_status_code" ;;
    esac
}

# Args:
# 1 - host
# 2 - port
# 3 - timeout
wait_for_port () {
    local host=$1
    local port=$2
    local timeout=$3
    local port_closed=1

    echo "Wait for port $port on $host."
    until [ $port_closed -eq 0 ]
    do
        tcp_port_is_open $host $port
        port_closed=$?
        timeout=$(($timeout - 1))
        if [ $timeout -eq 0 ]
        then
            echo ""
            echo "Wait for port $port on $host timed out."
            exit 1
        fi
        echo -n "."
        sleep 1
    done
    echo ""
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

get_sed_edit_option () {
    local sed_opt="-i"
    if [[ "$OSTYPE" == "darwin"* ]]; then
      sed_opt="-i ''"
    fi
    echo "$sed_opt"
}

get_arch () {
    echo "$(uname -m)"
}

get_compose_access_ip () {
    local platform=$(get_platform)
    if [[ $platform == 'linux' ]]; then
        ip=$(hostname -I)
    elif [[ $platform == 'osx' ]]; then
        ip=$(ifconfig | grep "inet " | grep -Fv 127.0.0.1 | awk '{print $2}' | head -n 1)
    else
        echo "OS is not supported"
        exit 1
    fi
    echo "${compose_access_ip:-$ip}"
}

get_dashed_ip () {
    local ip=$(get_compose_access_ip)
    local ipdash=$(echo "${ip}" |  tr . -)
    echo "$ipdash"
}

get_java_home () {
  local java_home=$(echo "$JAVA_HOME")
  if [ -z $java_home ]; then
      local java_props=$(java -XshowSettings:properties -version 2>&1 > /dev/null | grep 'java.home')
      IFS='=' read -ra java_homes <<< "$java_props"
      java_home=$(echo "${java_homes[1]}" | xargs)
  fi
  echo "$java_home"
}

# Args:
# 2 - instance name
# 1 - dump
import_postgres () {
    local INSTANCE_NAME=$1
    local image_name=$2
    if [ -z $image_name ]; then
      local dumps=($(ls ${APP_DIR}/${APP_NAME}_dump_*.tar.gz))
      dumps=$dumps | xargs -n1 | sort | xargs
      image_name=${dumps[${#dumps[@]} - 1]}
    fi
    echo "Loading dump: $image_name"
    docker exec -i ${INSTANCE_NAME} pg_restore -Fc --clean -U ${APP_NAME} -d ${APP_NAME} < ${image_name}
}

# Args:
# 1 - instance name
dump_postgresql () {
    local INSTANCE_NAME=$1
    local TIMESTAMP=$( date +%Y%m%d_%H%M%S )

    echo "Dumping database..."
    local DUMP_FILE=${APP_NAME}_dump_$TIMESTAMP.tar.gz
    docker exec -i ${INSTANCE_NAME} /bin/bash -c "PGPASSWORD=${APP_NAME} pg_dump --username=${APP_NAME} -F c ${APP_NAME}" > $DUMP_FILE || exit
    echo "Database dumped to $DUMP_FILE"
}

upgrade_postgresql_schema () {
    ${APP_DIR}/mvnw judo-rdbms-schema:apply \
    -DjdbcUrl=jdbc:postgresql://127.0.0.1:5432/${APP_NAME} \
    -DdbType=postgresql \
    -DdbUser=${APP_NAME} \
    -DdbPassword=${APP_NAME} \
    -f ${APP_DIR}/schema
}

install_maven_wrapper () {
    mvn wrapper:wrapper -Dmaven=3.8.6 || exit $?
    sed $(get_sed_edit_option) 's/https:\/\/nexus\.judo\.technology\/repository\/maven-judong\//https:\/\/repo\.maven\.apache\.org\/maven2/g' ${APP_DIR}/.mvn/wrapper/maven-wrapper.properties
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
stop_docker_instance () {
    local INSTANCE_NAME=$1

    # Test running instance is presented or doesn't
    local INSTANCE_RUNNING=$(docker ps | grep $INSTANCE_NAME | sed -e 's/^[[:space:]]*//')

    if [ ! -z "$INSTANCE_RUNNING" ]; then
      echo "Instance $INSTANCE_NAME is running, stopping..."
      docker stop $INSTANCE_NAME
    fi

}

# Args:
# 1 - instance name
remove_docker_instance () {
    local INSTANCE_NAME=$1
    stop_docker_instance $INSTANCE_NAME

    local INSTANCE_EXIST=$(docker ps -a | grep $INSTANCE_NAME | sed -e 's/^[[:space:]]*//')

    if [ ! -z "$INSTANCE_EXIST" ]; then
      echo "Instance $INSTANCE_NAME exists, remove..."
      docker rm $INSTANCE_NAME
    fi
}

# Args:
# 1 - instance name
start_docker_instance () {
    local INSTANCE_NAME=$1

    local INSTANCE_EXIST=$(docker ps -a | grep $INSTANCE_NAME | sed -e 's/^[[:space:]]*//')
    local INSTANCE_RUNNING=$(docker ps | grep $INSTANCE_NAME | sed -e 's/^[[:space:]]*//')

    if [ ! -z "$INSTANCE_EXIST" ]; then
      if [ -z "$INSTANCE_RUNNING" ]; then
        echo "Instance $INSTANCE_NAME is not running, starting..."
        docker start $INSTANCE_NAME
      fi
    fi
}


# Args:
# 1 - instance name
# 2 - port
start_keycloak () {
    local INSTANCE_NAME=$1
    local KEYCLOAK_PORT=$2

    local INSTANCE_EXIST=$(docker ps -a | grep $INSTANCE_NAME | sed -e 's/^[[:space:]]*//')

    if [ -z "$INSTANCE_EXIST" ]; then
      echo "Instance $INSTANCE_NAME is not existing, starting..."
      keycloak_image=quay.io/keycloak/keycloak:latest
      tcp_port_is_open 127.0.0.1 $KEYCLOAK_PORT
      if [ $? -eq 0 ]
      then
          echo "Could not start Keycloak. Port is already used: ${KEYCLOAK_PORT}"
          exit 1
      fi

      docker run -d \
          --name ${INSTANCE_NAME} \
          -e KEYCLOAK_ADMIN=admin \
          -e KEYCLOAK_ADMIN_PASSWORD=judo \
          -p $KEYCLOAK_PORT:$KEYCLOAK_PORT \
          -it $keycloak_image \
          start-dev --http-port=$KEYCLOAK_PORT --http-relative-path /auth || exit $?
    else
        start_docker_instance $INSTANCE_NAME
    fi
}

# Args:
# 1 - instance name
# 2 - port
start_postgres () {
    local INSTANCE_NAME=$1
    local POSTGRES_PORT=$2

    local INSTANCE_EXIST=$(docker ps -a | grep $INSTANCE_NAME | sed -e 's/^[[:space:]]*//')

    if [ -z "$INSTANCE_EXIST" ]; then
        echo "Instance $INSTANCE_NAME is not existing, starting..."
        tcp_port_is_open 127.0.0.1 $POSTGRES_PORT
        if [ $? -eq 0 ]
        then
            echo "Could not start Postgresql. Port is already used: ${POSTGRES_PORT}"
            exit 1
        fi

        docker run -d \
            -v ${APP_NAME}_db:/var/lib/postgresql/pgdata \
            --name $INSTANCE_NAME \
            -e PGDATA=/var/lib/postgresql/pgdata \
            -e POSTGRES_USER=$APP_NAME \
            -e POSTGRES_PASSWORD=$APP_NAME \
            -p $POSTGRES_PORT:5432 \
            postgres:latest \
            || exit $?
    else
        start_docker_instance $INSTANCE_NAME
    fi
}

# Args:
# 1 - dbtype
# 2 - karaf port
# 3 - keycloak port
# 4 - postgres port (optional)

start_karaf () {
    local DB_TYPE=$1
    local KARAF_PORT=$2
    local KEYCLOAK_PORT=$3
    local POSTGRES_PORT=$4

    tcp_port_is_open 127.0.0.1 $KARAF_PORT
    if [ $? -eq 0 ]
    then
        echo "Could not start karaf. Port is already used: ${KARAF_PORT}"
        exit 1
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
    export JUDO_PLATFORM_FILESTORE=rdbms
    export JUDO_PLATFORM_KEYCLOAK_AUTH_SERVER_URL=http://localhost:${KEYCLOAK_PORT}/auth

    local VERSION_NUMBER=$(${APP_DIR}/mvnw org.apache.maven.plugins:maven-help-plugin:3.2.0:evaluate -Dexpression=project.version -q -DforceStdout)

    local KARAF_DIR=${APP_DIR}/.karaf

    rm -rf $KARAF_DIR && \
    mkdir $KARAF_DIR && \
    cd $KARAF_DIR && \
    tar xvvzf $APP_DIR/karaf-offline/target/$APP_NAME-application-karaf-offline-${VERSION_NUMBER}.tar.gz && \
    mv $KARAF_DIR/$APP_NAME-application-karaf-offline-${VERSION_NUMBER}/* $KARAF_DIR/ || exit $?

    export EXTRA_JAVA_OPTS="-Xms1024m -Xmx1024m -Dfile.encoding=UTF-8 -Dsun.jnu.encoding=UTF-8"

    # replace repository URL
    sed $(get_sed_edit_option) "s/org\.osgi\.service\.http\.port[ ]*=[ ]*8181/org\.osgi\.service\.http\.port = ${KARAF_PORT}/g" ${KARAF_DIR}/etc/org.ops4j.pax.web.cfg

    if [ ! -z $karaf_enable_admin_user ]; then
        sed $(get_sed_edit_option) "s/#karaf[ ]*=[ ]/karaf = /g" ${KARAF_DIR}/etc/users.properties
        sed $(get_sed_edit_option) "s/#_g_/_g_/g" ${KARAF_DIR}/etc/users.properties
    fi

    $KARAF_DIR/bin/karaf debug run clean || exit
}


# Args:
# 1 - volume name
create_docker_volume () {
    local VOLUME_NAME=$1
    local VOLUME_EXIST=$(docker volume ls | grep $VOLUME_NAME | sed -e 's/^[[:space:]]*//')
    if [ -z "$VOLUME_EXIST" ]; then
        echo "Create $VOLUME_NAME volume"
        docker volume create $VOLUME_NAME
    fi
}

# Args:
# 1 - volume name
remove_docker_volume () {
    local VOLUME_NAME=$1
    local VOLUME_EXIST=$(docker volume ls | grep $VOLUME_NAME | sed -e 's/^[[:space:]]*//')
    if [ ! -z "$VOLUME_EXIST" ]; then
        echo "Remove $VOLUME_NAME volume"
        docker volume remove $VOLUME_NAME
    fi
}

# Args:
# 1 - volume name
create_docker_network () {
    local NETWORK_NAME=$1
    local NETWORK_EXIST=$(docker network ls | grep $NETWORK_NAME | sed -e 's/^[[:space:]]*//')
    if [ -z "$NETWORK_EXIST" ]; then
        echo "Create $NETWORK_NAME network"
        docker network create $NETWORK_NAME
    fi
}

# Args:
# 1 - volume name
remove_docker_network () {
    NETWORK_NAME=$1
    NETWORK_EXIST=$(docker network ls | grep $NETWORK_NAME | sed -e 's/^[[:space:]]*//')
    if [ ! -z "$NETWORK_EXIST" ]; then
        echo "Remove $NETWORK_NAME network"
        docker network remove $NETWORK_NAME
    fi
}


# Args:
# 1 - compsose env
start_compose () {
    local compose_env=$1

    export EXTERNAL_IP_DASH=$(get_dashed_ip)

    if [[ $compose_env == 'compose-develop' ]]; then
      echo """
Access in DEV mode:
     App      - http://app.traefik.me/apps
     Keycloak - http://auth.traefik.me
     Proxy    - http://proxy.traefik.me
"""
    elif [[ $compose_env == 'compose-postgresql-https' ]]; then
      echo """
Access in PROD mode:
     App      - https://app-${EXTERNAL_IP_DASH}.traefik.me/apps
     Keycloak - https://auth-${EXTERNAL_IP_DASH}.traefik.me
     Proxy    - https://proxy-${EXTERNAL_IP_DASH}.traefik.me
"""
    fi

    create_docker_network ${APP_NAME}
    create_docker_volume ${APP_NAME}_certs
    create_docker_volume ${APP_NAME}_db
    create_docker_volume ${APP_NAME}_filestore
    load_application_image
    docker compose -f ${APP_DIR}/docker/${compose_env}/docker-compose.yml up
}

# Args:
# 1 - compsose env
stop_compose () {
    local compose_env=$1
    docker compose -f ${APP_DIR}/docker/${compose_env}/docker-compose.yml down --volumes
}

# Args:
get_compose_envs () {
    for compose_name in $(find ./docker -type f -name 'docker-compose.yml' | sed -r 's|/[^/]+$||' | sed 's/.*\///')
    do
        echo "$compose_name"
        # or do whatever with individual element of the array
    done
#    $(find ${APP_DIR}/docker -type f -name 'docker-compose.yml' | sed -r 's|/[^/]+$||' | sed 's/.*\///')
}


load_application_image () {
    local arch=$(get_arch)

    local PROJECT_VERSION=$(${APP_DIR}/mvnw org.apache.maven.plugins:maven-help-plugin:3.2.0:evaluate -Dexpression=project.version -q -DforceStdout -f ${APP_DIR})
    docker load --input ${APP_DIR}/docker/target/${APP_NAME}-application-${PROJECT_VERSION}_docker_image_${arch}.tar || exit $?
}

build () {
    echo "Building version ${FULL_VERSION_NUMBER}"
    [ $skipModel -eq 1 ] || ${APP_DIR}/mvnw clean install -f $MODEL_DIR|| exit

    if [ $skipBackend -eq 1 -a $skipFrontend -eq 0 ]; then
        ${APP_DIR}/mvnw install -f ${APP_DIR}/frontend-react || exit
        ${APP_DIR}/mvnw install -f ${APP_DIR}/frontend-flutter || exit
    elif [ $skipBackend -eq 0 -a $buildAppModule -eq 1 ]; then
        ${APP_DIR}/mvnw install -f ${APP_DIR}/app || exit
    elif [ $skipBackend -eq 0 ]; then
        if [ $skipFrontend -eq 1 ]; then
            args="-DskipFrontendReact -DskipFrontendFlutter"
        fi
        if [ $skipBackendModels -eq 1 ]; then
            args="$args -DskipBackendModels"
        fi
        if [ $karafBuilding -eq 0 ]; then
            args="$args -DskipKaraf"
        fi
        if [ $dockerBuilding -eq 0 ]; then
            args="$args -DskipDocker"
        fi
        if [ $schemaBuilding -eq 0 ]; then
            args="$args -DskipSchema"
        fi
        ${APP_DIR}/mvnw install -f $APP_DIR $args || exit
    fi
}

## #####################################
## Processing arguments
## #####################################
CURR_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
APP_DIR=$CURR_DIR
MODEL_DIR="$(cd -P -- "$(dirname -- "${APP_DIR}")" && pwd)"

echo "Java home: $(get_java_home)"
export JAVA_HOME=$(get_java_home)

[ $# -eq 0 ] && print-help && exit 0

run=0
dump=0
build=0
clean=0
prune=0
schemaBuilding=0
update=0
frontend=0
generate=0
karafBuilding=1
skipModel=0
skipBackend=0
confirmation=1
skipFrontend=0
skipKeycloak=0
buildAppModule=0
skipBackendModels=0
import=0
dumpName=''
schemaUpgrade=0

FULL_VERSION_NUMBER="SNAPSHOT"
original_args=( "$@" )

while [ $# -ne 0 ]; do
    case "$1" in
        env)  shift 1; profile=$1; shift 1;;
        *)    shift 1;
        ;;
    esac
done

if [ ! -z $profile ]; then
  if [ ! -f "${APP_DIR}/${profile}.properties" ]; then
        echo "$profile properties missing"
        exit 1
  fi
  source ${APP_DIR}/${profile}.properties
elif [ -f "${APP_DIR}/judo.properties" ]; then
	source ${APP_DIR}/judo.properties
fi
MODEL_DIR=$(cd "$(dirname "${model_dir:-$MODEL_DIR}")"; pwd)/$(basename "${model_dir:-$MODEL_DIR}")

set -- "${original_args[@]}"
while [ $# -ne 0 ]; do
    case "$1" in
        env)                            shift 2;;
        clean)                          clean=1; shift 1;;

        prune)                          prune=1; shift 1;;
        -f)                             frontend=1; shift 1;;
        -y)                             confirmation=0; shift 1;;

        update)                         update=1; shift 1;;
        generate)                       generate=1; shift 1;;
        dump)                           dump=1; shift 1;;
        import)                         import=1; shift 1;;
        -dn | --dump-name)              shift 1; export dumpName=$1; shift 1;;
        schema-upgrade)                 schemaUpgrade=1; shift 1;;
        build)                          build=1; shift 1;;
        -a | --build-app-module)        buildAppModule=1; skipModel=1; shift 1;;
        -M | --skip-model)              skipModel=1; shift 1;;
        -B | --skip-backend)            skipBackend=1; shift 1;;
        -F | --skip-frontend)           skipFrontend=1; shift 1;;
        -BM | --skip-backendmodels)     skipBackendModels=1; shift 1;;
        -KA | --skip-karaf)             karafBuilding=0; shift 1;;
        -d | --docker)                  dockerBuilding=1; shift 1;;
        -s | --schema)                  schemaBuilding=1; shift 1;;

        -v | --version)                 shift 1; export FULL_VERSION_NUMBER=$1; shift 1;;

        run)                            run=1; shift 1;;
        -K  | --skip-keycloak)          skipKeycloak=1; shift 1;;

        -o | --options)                 shift 1; while read -d, -r pair; do IFS='=' read -r key val <<<"$pair"; eval "$key"="$val"; done <<<"$1,"; shift 1;;

        *)
            echo "Unrecognized option: $1"
            print-help
            exit 22
        ;;
    esac
done

case $runtime in

  compose)
    karaf=0
    compose=1
    dockerBuilding=1
    compose_env=${compose_env:-compose-develop}
    ;;

  karaf | *)
	karaf=1
    dockerBuilding=0
    KARAF_PORT=${karaf_port:-8181}
    POSTGRES_PORT=${postgres_port:-5432}
    KEYCLOAK_PORT=${keycloak_port:-8080}
    ;;
esac

case $dbtype in

  postgresql)
    postgres=1
    hsqldb=0;
    ;;

  hsqldb | *)
	postgres=0
	hsqldb=1
    ;;
esac

if [ ! -f "${APP_DIR}/mvnw" ]; then
    echo "Installing maven wrappper"
    install_maven_wrapper
fi

if [ $dump -eq 1 ]; then
    start_postgres postgres-${APP_NAME} ${POSTGRES_PORT:-5432}
    wait_for_port 127.0.0.1 ${POSTGRES_PORT:-5432} 30
    dump_postgresql postgres-${APP_NAME}
    stop_docker_instance postgres-${APP_NAME}
fi

if [ $import -eq 1 ]; then
    remove_docker_instance postgres-${APP_NAME}
    remove_docker_volume ${APP_NAME}_db
    start_postgres postgres-${APP_NAME} ${POSTGRES_PORT:-5432}
    wait_for_port 127.0.0.1 ${POSTGRES_PORT:-5432} 30
    import_postgres postgres-${APP_NAME}
    stop_docker_instance postgres-${APP_NAME}
    start_postgres postgres-${APP_NAME} ${POSTGRES_PORT:-5432}
fi

if [ $schemaUpgrade -eq 1 ]; then
    if [ $postgres -eq 1 ]; then
        start_postgres postgres-${APP_NAME} $POSTGRES_PORT
        wait_for_port 127.0.0.1 ${POSTGRES_PORT:-5432} 30
        upgrade_postgresql_schema
    fi
fi

if [ $prune -eq 1 ]; then
    prune_frontend
elif [ $clean -eq 1 ]; then

    for compose_name in $(get_compose_envs)
    do
        stop_compose $compose_name
    done

    remove_docker_instance postgres-${APP_NAME}
    remove_docker_instance keycloak-${APP_NAME}
    remove_docker_network ${APP_NAME}
    remove_docker_volume ${APP_NAME}_certs
    remove_docker_volume ${APP_NAME}_db
    remove_docker_volume ${APP_NAME}_filestore
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
            start_postgres postgres-${APP_NAME} $POSTGRES_PORT
        fi

        if [ $skipKeycloak -eq 0 ]; then
            start_keycloak keycloak-${APP_NAME} $KEYCLOAK_PORT
        fi

        if [ $hsqldb -eq 1 ]; then
            db_type=hsqldb
            start_karaf $db_type $KARAF_PORT $KEYCLOAK_PORT
        elif [ $postgres -eq 1 ]; then
            db_type=postgresql
            start_karaf $db_type $KARAF_PORT $KEYCLOAK_PORT $POSTGRES_PORT
        fi

        if [ $postgres -eq 1 ]; then
            stop_docker_instance postgres-${APP_NAME}
        fi
        stop_docker_instance keycloak-${APP_NAME}

    elif [ $compose -eq 1 ]; then
       dashed_domain=$(get_dashed_ip)
       start_compose $compose_env
    fi
fi

