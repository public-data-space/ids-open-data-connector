# IDS Open Data Connector

This is the Repository collecting setup files to conveniently boot an instance of the IDS Open Data Connector via docker-compose.

##Requirements
* git
* docker
* docker-compose

## Setup
* git clone

## Starting the connector

### Using the startup script
Run ```./startup.sh```

### Manually running docker-compose
```
git clone git@gitlab.fokus.fraunhofer.de:ids/odc-adapter-postgres.git ./adapters/odc-adapter-postgres
git clone git@gitlab.fokus.fraunhofer.de:ids/odc-adapter-ckan.git ./adapters/odc-adapter-ckan
git clone git@gitlab.fokus.fraunhofer.de:ids/odc-config-manager.git ./backend/odc-config-manager
git clone git@gitlab.fokus.fraunhofer.de:ids/odc-adapter-gateway.git ./backend/odc-adapter-gateway
git clone git@gitlab.fokus.fraunhofer.de:ids/odc-manager.git ./backend/odc-manager
git clone git@gitlab.fokus.fraunhofer.de:ids/odc-frontend.git ./frontend/odc-frontend
docker-compose up -d
```

### Usage
* Frontend is available at localhost:8080
* Username: *admin* Password: *admin*
* Enter connector configuration via *Konfiguration* first

## Registering a Data Asset
* Register a DataSource via *Hinzufügen*
* Example CKAN instance is available at http://ids-backend.fokus.fraunhofer.de/api/3/action
* Click on the registered DataSource and enter the prompted information
* Example CKAN resource ID: b7325acb-02a0-4d19-9a13-f5f917036a1e

## Registering to a broker
* Register the connector at a broker via *Brokers*

## Managing Apps
* Apps can be started and stopped via *Apps*
* The Apps view lists all currently available docker images on the system
