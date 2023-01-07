
docker compose -f docker-compose.yml -f docker-compose.alpine.yml -p relate-alpine run --rm app sh -c "python manage.py migrate && python manage.py createsuperuser --noinput"
