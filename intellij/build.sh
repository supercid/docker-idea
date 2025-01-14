#!/usr/bin/env bash

IDEA_VERSION=2022.2.3

docker build \
  --build-arg IDEA_VERSION=$IDEA_VERSION \
  --build-arg PLUGIN_IDS=1347 \
  --tag docker.pkg.github.com/supercid/docker-idea/intellijidea:$IDEA_VERSION \
  .

docker push docker.pkg.github.com/supercid/docker-idea/intellijidea:$IDEA_VERSION

docker tag docker.pkg.github.com/supercid/docker-idea/intellijidea:$IDEA_VERSION supercid/ijidea:$IDEA_VERSION

docker push supercid/ijidea:$IDEA_VERSION

docker tag supercid/ijidea:$IDEA_VERSION supercid/ijidea:latest
