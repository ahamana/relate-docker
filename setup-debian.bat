
set COMPOSE_FILE=compose.yml;compose.debian.yml
set COMPOSE_PROJECT_NAME=relate-debian

docker compose run --rm app sh -c "python manage.py migrate && python manage.py createsuperuser --noinput"
