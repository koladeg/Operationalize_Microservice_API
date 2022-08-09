#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=koladeg/56d48c6fba1e

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run my-pod-v1 --image=$dockerpath --port=8000


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward my-pod-v1 8000:80
