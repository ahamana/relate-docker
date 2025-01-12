
docker compose -f compose.yml -f compose.debian.yml -p relate-debian run --rm app sh -c "python manage.py migrate && python manage.py createsuperuser --noinput"
