#!/bin/sh

docker compose \
-f docker-compose.postgres.yml \
-f docker-compose.redis.yml \
-f docker-compose.minio.yml \
-f docker-compose.sso.yml \
-f docker-compose.outline.yml \
--env-file .env \
up -d
