#!/bin/bash

COMPOSE_FILES="-f docker-compose.yml"
COMMAND="$@"

if [[ $COMAND =~ (start) ]]; then
  COMPOSE_FILES="$COMPOSE_FILES"
fi

  docker-compose $COMPOSE_FILES up --build
  docker-compose $COMPOSE_FILES run --service-ports web python application_controller.py

read -p "Would you like to remove the containers? (Y/n)" -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
    docker-compose $COMPOSE_FILES down --remove-orphans
fi
