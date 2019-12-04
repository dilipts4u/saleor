#!/bin/bash
docker ps -a
docker-compose stop
echo "Cleanup By Removing all untagged images"
docker rmi $(docker images | grep "^<none>" | awk "{print $3}")
docker-compose build
docker-compose run --rm web python3 manage.py migrate
echo 'yes' | docker-compose run --rm web python3 manage.py collectstatic
echo 'yes' | docker-compose run --rm web python3 manage.py populatedb --createsuperuser

docker-compose up -d
docker ps -a
