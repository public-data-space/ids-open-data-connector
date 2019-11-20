#!/bin/bash

if ! [ $# -eq 0 ]; then
  t=$1
else
  t=10
fi

docker-compose up -d db
echo "Database is initializing. Sleeping for "${t}" seconds..."
sleep "${t}"

docker-compose up -d odc-adapter-gateway
echo "Adapter Gateway is starting..."

docker-compose up -d odc-config-manager
echo "Config Manager is initializing. Sleeping for "${t}" seconds..."
sleep "${t}"

docker-compose up -d odc-adapter-postgres
docker-compose up -d odc-adapter-ckan
echo "Adapter apps are initializing..."

docker-compose up -d odc-manager
echo "Manager is starting..."

docker-compose up -d odc-frontend
echo "Frontend is starting..."