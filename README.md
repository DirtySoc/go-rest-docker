# go-rest-docker

This repo contains the docker files required to get my [go-rest-api](https://github.com/DirtySoc/go-rest-api.git) running inside a docker container and exposed on port **10000**.

Steps to run:

1. Clone this repo.
2. cd to this repo.
3. Run `docker-compose up -d --build`

Steps to run after change to [go-rest-api](https://github.com/DirtySoc/go-rest-api.git) repo:

1. `docker-compose down`
2. `docker-compose build --no-cache`
3. `docker-compose up -d`

You must do the above because the docker image that docker-compose uses is local and not published. In a real pipeline you would have a GitHub action or other CI tool build the docker image when new commits are pushed to [go-rest-api](https://github.com/DirtySoc/go-rest-api.git).