#!/bin/bash
set -e

# Start the flask webserver
source /app/bin/activate
python3 /app/wsgi.py

