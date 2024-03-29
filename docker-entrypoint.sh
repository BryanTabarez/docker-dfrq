#!/bin/sh
# Nota: Instead of #!/bin/bash
# remember: chmod u+x docker-entrypoint.sh

# python manage.py makemigrations
python manage.py migrate --run-syncdb        # Apply database migrations
python manage.py collectstatic --clear --noinput # clearstatic files
python manage.py collectstatic --noinput  # collect static files

# Prepare log files and start outputting logs to stdout
touch /srv/logs/gunicorn.log
touch /srv/logs/access.log
tail -n 0 -f /srv/logs/*.log &

# Start Gunicorn processes
echo Starting Gunicorn.
exec gunicorn dfrqapp.wsgi_whitenoise \
    --name dfrqapp \
    --bind  0.0.0.0:8000 \
    --workers 2 \
    --log-level=info \
    --log-file=/srv/logs/gunicorn.log \
    --access-logfile=/srv/logs/access.log