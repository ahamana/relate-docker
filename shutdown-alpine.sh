
export COMPOSE_FILE=compose.yml:compose.alpine.yml
export COMPOSE_PROJECT_NAME=relate-alpine

docker compose down --rmi all
