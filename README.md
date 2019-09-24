# IDS Open Data Connector

This is the Repository collecting all files to conveniently boot an instance of the IDS Open Data Connector via docker-compose.

## Setup
* git clone
* git submodule init
* git submodule update

* Insert ISST IDS-Lab credentials into settings.xml

## Usage

### Usage without the apps

* docker-compose up

* Frontend is available at localhost:8080
* Username: *admin* Password: *admin*

* New DataSource adapters can be registered by POST request to localhost:8091, i.e. for CKAN and postgresql:
```json
{
    "name":"CKAN",
    "address":{
        "host":"odc-adapter-ckan",
        "port":8080
    }
}
```
```json
{
    "name":"POSTGRESQL",
    "address":{
        "host":"odc-adapter-postgres",
        "port":8080
    }
}
```

### Usage with apps demo showcase

* docker-compose -f docker-compose_build.yml build
* docker-compose -f docker-compose_up.yml up

* Go to *Apps*
* Start postgres and/or ckan app

## Registering a Data Asset
* Register a DataSource via *Hinzufügen*
* Example CKAN instance is available at http://ids-backend.fokus.fraunhofer.de/api/3/action
* Click on the registered DataSource and enter the prompted information
* Example CKAN resource ID: b7325acb-02a0-4d19-9a13-f5f917036a1e