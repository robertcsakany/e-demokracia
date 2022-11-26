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

#     \
#     -c log_min_duration_statement=10 \
#     -c logging_collector=on \
#     -c log_directory=/logs \
#     -c log_filename='postgresql-%Y-%m-%d_%H%M%S.log' \
#     -c log_rotation_age=1d \
#     -c log_rotation_size=100MB