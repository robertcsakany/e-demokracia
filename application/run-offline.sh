#!/bin/bash

export EXTRA_JAVA_OPTS="-Dfile.encoding=UTF-8"

export JUDO_PLATFORM_IDENTIFIER_SIGNER_SECRET=tJ0lt0h9X2WvVydp4SoDIahBdBcctMxlTn6UJ1xTbQYltBF//qPLmyZPU6X02ETnsP/X7G3IDhGttNXISwyi1uJk5haBj3MI88baDxckmOKpAd6Fy93KSZJgPoGuICD0bPYKeXMSSqEKypt4NkY0NiNL2aLVwL3UDCWHsWQsCfk=
export JUDO_PLATFORM_KEYCLOAK_DEFAULT_PASSWORD_POLICY=SAME_EMAIL
export JUDO_PLATFORM_LOG_SMTP_SERVER=true
export JUDO_PLATFORM_RDBMS_DB_DATABASE=edemokracia
export JUDO_PLATFORM_RDBMS_DB_USER=edemokracia
export JUDO_PLATFORM_RDBMS_DB_PASSWORD=edemokracia
export JUDO_PLATFORM_HIKARI_CONNECTION_TIMEOUT=120000
export JUDO_PLATFORM_NARAYANA_DEFAULT_TIMEOUT=120000
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
