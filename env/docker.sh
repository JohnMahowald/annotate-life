POSTGRES_NAME="annotate-postgres"
ROOT_DIR=`git rev-parse --show-toplevel`
POSTGRES_DIR="$ROOT_DIR/postgres"
DJANGO_NAME="annotate-server"
DJANGO_DIR="server"

ensure_docker() {
  if ! command -v docker &> /dev/null
  then
    print_error "Running app requires [ docker ]. Please ensure docker is installed and running."
    exit 1
  fi

  if ! docker ps &> /dev/null
  then 
    print_error "Docker is not running. Please ensure docker daemon is running and try again."
    exit 1
  fi
}

safe_run_postgres() {
  found_container=`docker ps --format '{{.Names}}' | grep $POSTGRES_NAME`

  if [[ $found_container == $POSTGRES_NAME ]]
  then
    print_green "Postgres [ $POSTGRES_NAME ] is already running."
  else
    echo "Starting up annotate postgres."
    run_postgres
    print_green "Postgres [ $POSTGRES_NAME ] is now running."
  fi
}

run_postgres() {
  source .env
  docker run \
    -p 5432:5432 \
    --name $POSTGRES_NAME \
    -e PGDATA=/var/lib/postgresql/db_data \
    -e POSTGRES_PASSWORD=$DB_PASSWORD \
    -e POSTGRES_HOST_AUTH_METHOD=password \
    -e DB_NAME=$DB_NAME \
    -e DB_USER=$DB_USER \
    -v "$POSTGRES_DIR/db_data:/var/lib/postgresql/db_data" \
    -d \
    annotate-postgres
}

build_postgres() {
  ensure_docker

  mkdir -p ./postgres/db_data

  source .env

  docker build \
    -t $POSTGRES_NAME \
    --build-arg POSTGRES_PASSWORD=$DB_PASSWORD \
    --build-arg DB_NAME=$DB_NAME \
    --build-arg DB_USER=$DB_USER \
    ./postgres
}

build_django() {
  echo "Building service [ $DJANGO_NAME ]..."
  docker build . \
    -f $DJANGO_DIR/Dockerfile \
    -t $DJANGO_NAME \
    --network=host
}

run_django_docker() {
  echo "Running service [ $DJANGO_NAME ] in docker..."
  docker run \
      --rm \
      --name $DJANGO_NAME \
      -p 3041:3041 \
      -d \
      $DJANGO_NAME
  print_green "Successfully started service [ $DJANGO_NAME ] in docker."
}
