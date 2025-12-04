#!/bin/bash
pip install -r requirements.txt
python manage.py migrate --noinput
python manage.py collectstatic --noinput
gunicorn Point_De_Vente.wsgi --bind 0.0.0.0:$PORT
