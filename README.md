# IDS Open Data Connector

This is the Repository collecting setup files to conveniently boot an instance of the IDS Open Data Connector via docker-compose.

## Requirements
* git
* docker
* docker-compose 3.5 or higher

## Setup
* git clone

(On windows machines line endings may be problematic when used with docker. The file backend\postgres\docker-entrypoint-initdb.d\00_create_db.sh needs to use UNIX line endings.)

* Run ```./setup.sh```

## Starting the connector

The setup.sh will automatically boot the connector after setup.
To start the connector manually run:

```./startup.sh [-t]``` 

The -t parameter specifies the wait time between initialisation of important containers. It defaults to 10 seconds, but may be lowered depending on the machine the connector is run on.

The connector can also be started using docker-compose up -d. However due to initialization times of containers, errors may occur. We therefore recommend using the startup script.


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
