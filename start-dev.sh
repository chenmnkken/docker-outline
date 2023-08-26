#!/bin/sh

docker compose -f docker-compose.traefik.yml -f docker-compose.postgres.yml -f docker-compose.redis.yml -f docker-compose.minio.yml -f docker-compose.attachment.yml -f docker-compose.sso.yml -f docker-compose.outline.yml up -d
