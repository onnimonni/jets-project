# Jets Example Project

Example project for running Jets development environment with docker.

## How to run this
```bash
$ docker-compose up -d
$ docker-compose logs -f
# When it's ready you can start using jets
$ docker-compose run --rm jets jets generate scaffold Post title:string
```