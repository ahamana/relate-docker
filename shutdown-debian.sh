
export COMPOSE_FILE=compose.yml:compose.debian.yml
export COMPOSE_PROJECT_NAME=relate-debian

docker compose down --rmi all
