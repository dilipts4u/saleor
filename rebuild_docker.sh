#!/bin/bash
docker ps -a
docker-compose stop
docker-compose build
docker-compose run --rm web python3 manage.py migrate
docker-compose run --rm web python3 manage.py collectstatic
docker-compose run --rm web python3 manage.py populatedb --createsuperuser

docker-compose up -d
docker ps -a
