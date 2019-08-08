#!/bin/bash
set -e

psql --username "$DATABASE_USER" --dbname 'ids' <<-EOSQL
  CREATE TABLE IF NOT EXISTS public.user (id SERIAL , created_at TIMESTAMP , updated_at TIMESTAMP , username TEXT, password TEXT);
  CREATE TABLE IF NOT EXISTS dataasset (id SERIAL, created_at TIMESTAMP, updated_at TIMESTAMP, datasetid TEXT, name TEXT, url TEXT, format TEXT, licenseurl TEXT, licensetitle TEXT, datasettitle TEXT, datasetnotes TEXT, orignalresourceurl TEXT, orignaldataseturl TEXT, signature TEXT, status INTEGER, resourceid TEXT, tags TEXT[] , datasetdescription TEXT, organizationtitle TEXT, organizationdescription TEXT, version TEXT, sourceid TEXT);
  CREATE TABLE IF NOT EXISTS datasource (id SERIAL, created_at TIMESTAMP, updated_at TIMESTAMP, datasourcename TEXT, data JSONB, datasourcetype TEXT);
  CREATE TABLE IF NOT EXISTS job (id SERIAL, created_at TIMESTAMP, updated_at TIMESTAMP, data JSONB, status INTEGER, sourceid BIGINT, sourcetype TEXT);
EOSQL
