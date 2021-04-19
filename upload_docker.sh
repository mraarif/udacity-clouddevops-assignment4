#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Create dockerpath
dockerpath=mraarif/flask-ml-microservice:latest

# Authenticate & tag
echo "Docker ID and Image: $dockerpath"

docker login -u="mraarif" -p="$DOCKER_PASSWORD"
docker tag flask-ml-microservice $dockerpath

# push
docker push $dockerpath
