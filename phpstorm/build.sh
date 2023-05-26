#!/usr/bin/env bash

IDEA_VERSION=PhpStorm-2023.1.2

docker build \
  --build-arg IDEA_VERSION=$IDEA_VERSION \
  --tag ghcr.io/supercid/docker-idea/phpstorm:$IDEA_VERSION \
  .

docker push ghcr.io/supercid/docker-idea/phpstorm:$IDEA_VERSION

docker tag ghcr.io/supercid/docker-idea/phpstorm:$IDEA_VERSION supercid/jbstorm:$IDEA_VERSION

docker push supercid/jbstorm:$IDEA_VERSION

docker tag supercid/jbstorm:$IDEA_VERSION supercid/jbstorm:latest