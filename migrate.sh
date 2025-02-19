#/bin/bash
echo ${DJANGO_SUPERUSER_EMAIL}
DJANGO_SUPERUSER_EMAIL =${DJANGO_SUPERUSER_EMAIL:-"testing@gmail.com"}

cd /app/
echo $DJANGO_SUPERUSER_EMAIL
echo $DJANGO_SUPERUSER_EMAIL
echo $DJANGO_SUPERUSER_EMAIL

/opt/env/bin/python manage.py migrate --noinput
/opt/env/bin/python manage.py createsuperuser --email $DJANGO_SUPERUSER_EMAIL --noinput || true

