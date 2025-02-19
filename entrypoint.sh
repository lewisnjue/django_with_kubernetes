#!/bin/bash
echo "Waiting for PostgreSQL..."
until pg_isready -h postgress_db -p 5432; do
  echo "PostgreSQL is not ready yet. Retrying in 2 seconds..."
  sleep 2
done

APP_PORT=${PORT:-8000}
cd /app/
chmod +x /app/migrate.sh &&  /app/migrate.sh
exec /opt/env/bin/gunicorn  lewishome.wsgi:application --bind "0.0.0.0:${APP_PORT}"