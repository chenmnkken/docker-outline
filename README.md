# README

Self hosting [Outline](https://github.com/outline/outline) based on Docker And Nginx, from [docker-outline](https://github.com/soulteary/docker-outline).

**中文用户配置教程**

- https://blog.yiguochen.com/self-hosting-outline.html


### Project Dependency

- Outline Server: `outlinewiki/outline:0.71.0`
    - Outline application.
- S3 Server: `minio/minio:RELEASE.2023-08-16T20-17-30Z`
    - Provide object storage capabilities.
- SSO Server: `authelia/authelia:4`
    - Make it possible for the outline to log in locally.
- Database: `postgres:15`
    - Store all document related data.
- Redis: `redis:7`
    - Cache service to make your application run faster.

### Usage

1. Clone this repo to you local dir, and cd repo dir.

```shell
git clone https://github.com/chenmnkken/docker-outline.git outline
cd outline
```

2. Create a virtual network card to provide in-container and external services.

```shell
docker network create outline
```

3. Modify domain and secret field if you need in `.env` file.

```shell
vim .env
```

4. Config Authelia base authelia `.yml` files, it's sso server config.

5. Start services.

```shell
./start.sh
```

6. Browser `http://$HOST-IP:9001` minio console, create `outline` bucket, and set access policy is public.

7. Config Nginx by `./nginx` conf files.

8. Config your domain to server.

9. Browser `https://docs.example.com`.

