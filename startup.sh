#!/bin/bash

#Clone adapters
git clone git@gitlab.fokus.fraunhofer.de:ids/odc-adapter-postgres.git ./adapters/odc-adapter-postgres
git clone git@gitlab.fokus.fraunhofer.de:ids/odc-adapter-ckan.git ./adapters/odc-adapter-ckan

#Clone backend
git clone git@gitlab.fokus.fraunhofer.de:ids/odc-config-manager.git ./backend/odc-config-manager
git clone git@gitlab.fokus.fraunhofer.de:ids/odc-adapter-gateway.git ./backend/odc-adapter-gateway
git clone git@gitlab.fokus.fraunhofer.de:ids/odc-manager.git ./backend/odc-manager

#Clone frontend
git clone git@gitlab.fokus.fraunhofer.de:ids/odc-frontend.git ./frontend/odc-frontend

docker-compose up -d
