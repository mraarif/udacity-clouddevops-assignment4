#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# This is your Docker ID/path
dockerpath=mraarif/flask-ml-microservice:latest


# Run the Docker Hub container with kubernetes
kubectl run flaskmicroservice\
    --generator=run-pod/v1\
    --image=$dockerpath\
    --port=80 --labels app=flaskmicroservice


# List kubernetes pods
kubectl get pods


# Forward the container port to a host
kubectl port-forward flaskmicroservice 8000:80
