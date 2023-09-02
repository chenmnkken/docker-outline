#!/bin/sh

docker compose \
-f docker-compose.postgres.yml \
-f docker-compose.redis.yml \
-f ./docker-compose-prod/docker-compose.minio.yml \
-f ./docker-compose-prod/docker-compose.attachment.yml \
-f ./docker-compose-prod/docker-compose.sso.yml \
-f ./docker-compose-prod/docker-compose.outline.yml up -d
