#!/bin/bash
set -e

gunicorn -w 4 -b unix:/srv/redditarchiver/gunicorn.sock app:app
# Start the flask webserver
source /app/bin/activate
python3 /app/wsgi.py

