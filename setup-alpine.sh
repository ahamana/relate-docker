
export COMPOSE_ENV_FILES=.env,.env.alpine

docker compose run --rm app sh -c "python manage.py migrate && python manage.py createsuperuser --noinput"
