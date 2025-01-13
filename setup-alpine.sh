
export COMPOSE_FILE=compose.yml:compose.alpine.yml
export COMPOSE_PROJECT_NAME=relate-alpine

docker compose run --rm app sh -c "python manage.py migrate && python manage.py createsuperuser --noinput"
