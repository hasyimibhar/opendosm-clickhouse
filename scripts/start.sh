#!/bin/sh

docker compose up -d
docker compose run dbt run-operation stage_external_sources
docker compose run dbt run
docker compose run dbt test
