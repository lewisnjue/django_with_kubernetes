#/bin/bash
DJANGO_SUPERUSER_EMAIL =${DJANGO_SUPERUSER_EMAIL:-"testing@gmail.com"}

cd /app/


/opt/env/bin/python manage.py migrate --noinput
/opt/env/bin/python manage.py createsuperuser --email $DJANGO_SUPERUSER_EMAIL --noinput || true

