#!/bin/bash
set -ev
set DOCKER_USERNAME wildbard
set DOCKER_PASSWORD 10468790r
docker build -t wildbarrd/lab_4:latest-travis -f Dockerfile.site .
docker images
if [ "$TRAVIS_PULL_REQUEST" == "false" ]; then echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin; docker push wildbard/lab_4:latest-travis; else echo "PR skip deploy"; fi
docker build -t wildbard/lab_4:monitoring-travis -f Dockerfile.monitoring .
docker images
if [ "$TRAVIS_PULL_REQUEST" == "false" ]; then echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin; docker push wildbard/lab_4:monitoring-travis; else echo "PR skip deploy"; fi
exit 0