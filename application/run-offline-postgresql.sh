./run-postgresql.sh || exit $?
export JUDO_PLATFORM_RDBMS_DIALECT=postgresql
export KARAF_DEBUG=true
./run-offline.sh
