#!/usr/bin/env bash
# exit on error
set -o errexit

poetry install

python mysite/manage.py collectstatic --no-input
python mysite/manage.py migrate