#!/bin/sh

docker compose \ 
-f docker-compose.traefik.yml \
-f docker-compose.minio-init.yml \
-f docker-compose.postgres.yml \
-f docker-compose.redis.yml \
-f ./docker-compose-dev/docker-compose.minio.yml \
-f ./docker-compose-dev/docker-compose.attachment.yml \
-f ./docker-compose-dev/docker-compose.sso.yml \
-f ./docker-compose-dev/docker-compose.outline.yml up -d
