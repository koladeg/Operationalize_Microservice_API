#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=koladeg/56d48c6fba1e
# Step 2:  
# Authenticate & tag
docker login
docker tag project ${dockerpath}
echo "Docker ID and Image: $dockerpath"
# aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 768752611803.dkr.ecr.us-east-1.amazonaws.com
# docker build -t project4 .
# docker tag project4:latest 768752611803.dkr.ecr.us-east-1.amazonaws.com/project4:latest
# Step 3:
# Push image to a docker repository
# docker push 768752611803.dkr.ecr.us-east-1.amazonaws.com/project4:latest
docker push ${dockerpath}
