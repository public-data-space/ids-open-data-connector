#!/bin/bash

usage()
{
    echo "usage: startup [[-f docker-compose-file] [-t timer in seconds]]"
}

t=10
f=docker-compose.yml

while [ "$1" != "" ]; do
    case $1 in
        -f | --file )           shift
                                f=$1
                                ;;
        -t | --timer)           shift
                                t=$1
                                ;;
        -h | --help )           usage
                                exit
                                ;;
        * )                     usage
                                exit 1
    esac
    shift
done

docker-compose -f $f up -d db
echo "Database is initializing. Sleeping for "${t}" seconds..."
sleep "${t}"

docker-compose -f $f up -d odc-config-manager
echo "Config Manager is initializing. Sleeping for "${t}" seconds..."
sleep "${t}"

docker-compose -f $f up -d odc-adapter-postgres
docker-compose -f $f up -d odc-adapter-ckan
echo "Adapter apps are initializing..."

docker-compose -f up $f -d odc-manager
echo "Manager is starting..."

docker-compose -f $f up -d odc-frontend
echo "Frontend is starting..."