#!/usr/bin/env bash
# Exit immediately on errors
set -o errexit

# Install production dependencies
pip install -r requirements.txt

# Collect static files with WhiteNoise
python manage.py collectstatic --noinput

# Run migrations
python manage.py migrate
